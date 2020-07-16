import 'courses.dart';

class CoursesRep {
  static List<Courses> loadCourses(Category category)
  {
    const allCourses = <Courses> [
      Courses(
        category: Category.computer,
        id: 0,
        name: 'Boolean Algebra',
        code: 'CEF 422'
      ),
      Courses(
          category: Category.computer,
          id: 1,
          name: 'Linear Algebra',
          code: 'CEF 442'
      ),
      Courses(
          category: Category.computer,
          id: 2,
          name: 'Human Computer Interaction',
          code: 'CEF 412'
      ),
      Courses(
          category: Category.computer,
          id: 3,
          name: 'Switching and Routing',
          code: 'CEF 419'
      ),
      Courses(
          category: Category.electrical,
          id: 4,
          name: 'Feedback System',
          code: 'EEF 462'
      ),
      Courses(
          category: Category.electrical,
          id: 5,
          name: 'Circuit analysis',
          code: 'EEF 411'
      ),
      Courses(
          category: Category.electrical,
          id: 6,
          name: 'Physics For Engineering',
          code: 'EEF 445'
      ),
      Courses(
          category: Category.computer,
          id: 7,
          name: 'Cloud Computing',
          code: 'CEF 416'
      ),
      Courses(
          category: Category.electrical,
          id: 8,
          name: 'Digital Electronics',
          code: 'EEF 400'
      ),
      Courses(
          category: Category.computer,
          id: 9,
          name: 'Artificial Intelligence',
          code: 'CEF 444'
      ),
      Courses(
          category: Category.electrical,
          id: 10,
          name: 'Signals and Systems',
          code: 'EEF 404'
      ),
      Courses(
          category: Category.computer,
          id: 11,
          name: 'Introduction to Computing',
          code: 'CEF 411'
      ),
      Courses(
          category: Category.electrical,
          id: 12,
          name: 'Microcontrollers',
          code: 'EEF 425'
      ),
      Courses(
          category: Category.computer,
          id: 13,
          name: 'Software engineering',
          code: 'CEF 426'
      ),
      Courses(
          category: Category.computer,
          id: 14,
          name: 'Advanced Database',
          code: 'CEF 438'
      ),
      Courses(
          category: Category.computer,
          id: 15,
          name: 'Local Area Network',
          code: 'CEF 419'
      ),

    ];
    if (category == Category.all){
      return allCourses;
    } else{
      return allCourses.where((Courses c){
        return c.category == category;
      }).toList();
    }
  }

}