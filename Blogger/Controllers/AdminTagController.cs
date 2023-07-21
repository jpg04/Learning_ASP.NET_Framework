using Microsoft.AspNetCore.Mvc;

namespace Blogger.Controllers
{
    public class AdminTagController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
