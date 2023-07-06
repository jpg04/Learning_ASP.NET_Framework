using Microsoft.AspNetCore.Mvc;

namespace MVC_CRUD.Controllers
{
    public class EmployeesController : Controller
    {
        [HttpGet]
        public IActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Add()
        {

        }

            
    }
}
