using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Online_Learning_Web.Models;

namespace Online_Learning_Web.Controllers
{
    public class CourseDetailController : Controller
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly MyDbContext _context;
        public CourseDetailController(MyDbContext context)
        {
            _context = context;
        }
        public IActionResult Index(int ID, int lessonId)
        {
            // Add to MyCourse
            Course course = _context.Courses.FirstOrDefault(c => c.Id == ID);
            // Select Lesson of chapter
            var lessons = _context.Lessons.ToList();
            if (lessonId != 0)
            {
                // Check type of lesson
                Lesson ls = _context.Lessons.FirstOrDefault(l => l.ID == lessonId);
                if (ls.Type.Equals("practice"))
                {
                    return Redirect("/Questions/DoingQuestion?lessonID=" + lessonId + "&courseID=" + ID);
                }
            }
            // Select chapter of course
            var chapters = _context.Chapters.ToList();
            var chapterOfCourse = from chapter in chapters
                                  where chapter.CourseID == ID
                                  select chapter;

           

            ViewBag.Chapters = chapterOfCourse;
            ViewBag.Lessons = lessons;
            if (lessonId == 0)
            {
                ViewBag.lessonId = 146;
            }
            else
            {
                ViewBag.lessonId = lessonId;
            }
            return View();
        }

    }

}
