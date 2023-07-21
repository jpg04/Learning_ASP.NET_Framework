using Microsoft.AspNetCore.Mvc;

namespace Blogger.Controllers
{
    public class AdminTagController : Controller
    {
        [HttpGet]
        public IActionResult Add()
        {
            return View();
        }
    }
}
