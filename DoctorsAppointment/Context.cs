using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoctorsAppointment
{
    class Context
    {
        private static dbDoctorsAppointmentEntities _context;

        public static dbDoctorsAppointmentEntities GetContext()
        {
            if (_context == null)
            {
                _context = new dbDoctorsAppointmentEntities();
            }

            return _context;
        }
    }
}
