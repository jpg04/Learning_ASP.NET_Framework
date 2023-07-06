using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using MVC_CRUD.Data;
using MVC_CRUD.Models;
using MVC_CRUD.Models.DomainModel;

namespace MVC_CRUD.Controllers
{
    public class EmployeesController : Controller
    {
        private readonly MVC_CRUD_DB_Context mVC_CRUD_DB_Context;

        public EmployeesController(MVC_CRUD_DB_Context mVC_CRUD_DB_Context)
        {
            this.mVC_CRUD_DB_Context = mVC_CRUD_DB_Context;
        }

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            var emloyees = await mVC_CRUD_DB_Context.Employees.ToListAsync();
            return View(emloyees);
        }

        [HttpGet]
        public IActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public async Task<IActionResult> Add(AddEmployeeViewModel addEmployeeRequest)
        {
            var employee = new Employee()
            {
                Id = Guid.NewGuid(),
                Name = addEmployeeRequest.Name,
                Email = addEmployeeRequest.Email,
                Salary = addEmployeeRequest.Salary,
                Department = addEmployeeRequest.Department,
                DateOfBirth = addEmployeeRequest.DateOfBirth,

            };

            await mVC_CRUD_DB_Context.Employees.AddAsync(employee);
            await mVC_CRUD_DB_Context.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        [HttpGet]
        public async Task<IActionResult> View(Guid Id)
        {
            var employee = await mVC_CRUD_DB_Context.Employees.FirstOrDefaultAsync(x=> x.Id == Id);

            if (employee != null)
            {
                var viewModel = new UpdateEmployeeViewModel()
                {
                    Id = Guid.NewGuid(),
                    Name = employee.Name,
                    Email = employee.Email,
                    Salary = employee.Salary,
                    Department = employee.Department,
                    DateOfBirth = employee.DateOfBirth,
                };

                return await Task.Run(()=>View("View",viewModel));
            }
            return RedirectToAction("Index");
        }

        [HttpPost]
        public async Task<IActionResult> View(UpdateEmployeeViewModel model)
        {
            var employee = await mVC_CRUD_DB_Context.Employees.FindAsync(model.Id);

            if (employee != null)
            {
                employee.Name = model.Name; 
                employee.Email = model.Email;   
                employee.Salary = model.Salary;
                employee.DateOfBirth = model.DateOfBirth;
                employee.Department = model.Department;

                await mVC_CRUD_DB_Context.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            return RedirectToAction("Index");
        }

        [HttpPost]
        public async Task<IActionResult> Delete(UpdateEmployeeViewModel model)
        {
            var employee = await mVC_CRUD_DB_Context.Employees.FindAsync(model.Id);

            if (employee != null) 
            {
                mVC_CRUD_DB_Context.Employees.Remove(employee);
                await mVC_CRUD_DB_Context.SaveChangesAsync();

                return RedirectToAction("Index");   
            }
            return RedirectToAction("Index");   
        }
            
    }
}
