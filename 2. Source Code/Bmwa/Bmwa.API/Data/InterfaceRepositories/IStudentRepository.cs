using System.Collections.Generic;
using System.Threading.Tasks;
using Bmwa.API.Models;

namespace Bmwa.API.Data.InterfaceRepositories
{
    public interface IStudentRepository
    {
         void Add<T> (T entity) where T: class;
         void Delete<T> (T entity) where T: class;
         Task<bool> SaveAll();
         Task<IEnumerable<Student>> GetStudents();
         Task<Student> GetStudent(int id);
    }
}