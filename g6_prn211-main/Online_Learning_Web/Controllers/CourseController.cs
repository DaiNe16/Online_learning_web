using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Online_Learning_Web.Models;
using Online_Learning_Web.ViewModel;

namespace Online_Learning_Web.Controllers
{
    public class CourseController : Controller
    {
        private readonly MyDbContext _context;
        public CourseController(MyDbContext context)
        {
            _context = context;
        }
        public async Task<IActionResult> Index()
        {
            ViewBag.listCourse = _context.Courses.ToList();

            return View();
        }
        public IActionResult Create()
        {
            //ViewData["LessonID"] = new SelectList(_context.Lessons, "ID", "ID");

            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(Course course)
        {
            Course course1 = new Course
            {
                Title = course.Title,
                Price = course.Price,
                IsPublished = course.IsPublished,
                Level = course.Level,
                Description = course.Description,
                Image = course.Image,
            };
            _context.Add(course1);
            _context.SaveChanges();

            ViewBag.listCourse = _context.Courses.ToList();
            return View("Index");
        }


        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null || _context.Courses == null)
            {
                return NotFound();
            }

            var cour = await _context.Courses
                .FirstOrDefaultAsync(m => m.Id == id);
            
            if (cour == null)
            {
                return NotFound();
            }

            return View(cour);
        }

        // POST: Questions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            if (_context.Courses == null)
            {
                return Problem("Entity set 'MyDbContext.Courses'  is null.");
            }
            var cour = await _context.Courses.FindAsync(id);
            if (cour != null)
            {
                _context.Courses.Remove(cour);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }
        //Get:
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null || _context.Courses == null)
            {
                return NotFound();
            }
            var course = from c in _context.Courses
                         where c.Id == id
                         select new Course
                         {
                             Title = c.Title,
                             Price = c.Price,
                             IsPublished = c.IsPublished,
                             Level = c.Level,
                             Description = c.Description,
                             Image = c.Image,
                         };
            ViewBag.Course = course.FirstOrDefault();

            ViewBag.listChapter= _context.Chapters.Where(c=> c.CourseID== id).ToList();

            List<CourseLearnWhat> listL= _context.CourseLearnWhats.Where(t => t.CourseID== id).ToList();
            List<string> content = listL.Select(t => t.Content).ToList();
            string concatenatedContent = string.Join("\n", content);
            ViewBag.targetStr = concatenatedContent;

            List<CourseRequirement> listR = _context.CourseRequirements.Where(t => t.CourseID == id).ToList();
            List<string> content1 = listR.Select(t => t.Content).ToList();
            string concatenatedContent1 = string.Join("\n", content1);
            ViewBag.RequirementStr = concatenatedContent1; 

            return View();
        }

        // POST: Questions/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(AddQuestionVM addQuestionVM, int id)
        {
            if (!ModelState.IsValid)
            {
                return View("Index");
            }
            

            return RedirectToAction("Index");
        }

    }
}
