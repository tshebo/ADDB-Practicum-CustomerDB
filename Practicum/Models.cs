using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Practicum
{

    public class Instructor
    {
        public int InsId { get; set; }
        public string InsFName { get; set; }
        public string InsSName { get; set; }
        public string InsContact { get; set; }
        public int InsLevel { get; set; }
    }

    public class Customer
    {
        public string CustId { get; set; }
        public string CustFname { get; set; }
        public string CustSname { get; set; }
        public string CustAddress { get; set; }
        public string CustContact { get; set; }
    }

    public class Dive
    {
        public int DiveId { get; set; }
        public string DiveName { get; set; }
        public string DiveDuration { get; set; }
        public string DiveLocation { get; set; }
        public int DiveExpLevel { get; set; }
        public decimal DiveCost { get; set; }
    }

    public class DiveEvent
    {
        public string DiveEventId { get; set; }
        public DateTime DiveDate { get; set; }
        public int DiveParticipants { get; set; }
        public int InsId { get; set; }
        public string CustId { get; set; }
        public int DiveId { get; set; }
    }




    public static class DataStore
    {
        public static List<Instructor> Instructors = new List<Instructor>
    {
        new Instructor { InsId = 101, InsFName = "James", InsSName = "Willis", InsContact = "0843569851", InsLevel = 7 },
        new Instructor { InsId = 102, InsFName = "Sam", InsSName = "Wait", InsContact = "0763698521", InsLevel = 2 },
        new Instructor { InsId = 103, InsFName = "Sally", InsSName = "Gumede", InsContact = "0786598521", InsLevel = 8 },
        new Instructor { InsId = 104, InsFName = "Bob", InsSName = "DuPreez", InsContact = "0796369857", InsLevel = 3 },
        new Instructor { InsId = 105, InsFName = "Simon", InsSName = "Jones", InsContact = "0826598741", InsLevel = 9 }
    };

        public static List<Customer> Customers = new List<Customer>
    {
        new Customer { CustId = "C115", CustFname = "Heinrich", CustSname = "Willis", CustAddress = "3 Main Road", CustContact = "0821253659" },
        new Customer { CustId = "C116", CustFname = "David", CustSname = "Watson", CustAddress = "13 Cape Road", CustContact = "0769658547" },
        new Customer { CustId = "C117", CustFname = "Waldo", CustSname = "Smith", CustAddress = "3 Mountain Road", CustContact = "0863256574" },
        new Customer { CustId = "C118", CustFname = "Alex", CustSname = "Hanson", CustAddress = "8 Circle Road", CustContact = "0762356587" },
        new Customer { CustId = "C119", CustFname = "Kuhle", CustSname = "Bitterhout", CustAddress = "15 Main Road", CustContact = "0821235258" },
        new Customer { CustId = "C120", CustFname = "Thando", CustSname = "Zolani", CustAddress = "88 Summer Road", CustContact = "0847541254" },
        new Customer { CustId = "C121", CustFname = "Philip", CustSname = "Jackson", CustAddress = "3 Long Road", CustContact = "0745556658" },
        new Customer { CustId = "C122", CustFname = "Sarah", CustSname = "Jones", CustAddress = "7 Sea Road", CustContact = "0814745745" },
        new Customer { CustId = "C123", CustFname = "Catherine", CustSname = "Howard", CustAddress = "31 Lake Side Road", CustContact = "0822232521" }
    };

        public static List<Dive> Dives = new List<Dive>
    {
        new Dive { DiveId = 550, DiveName = "Shark Dive", DiveDuration = "3 hours", DiveLocation = "Shark Point", DiveExpLevel = 8, DiveCost = 500 },
        new Dive { DiveId = 551, DiveName = "Coral Dive", DiveDuration = "1 hour", DiveLocation = "Break Point", DiveExpLevel = 7, DiveCost = 300 },
        new Dive { DiveId = 552, DiveName = "Wave Crescent", DiveDuration = "2 hours", DiveLocation = "Ship wreck ally", DiveExpLevel = 3, DiveCost = 800 },
        new Dive { DiveId = 553, DiveName = "Underwater Exploration", DiveDuration = "1 hour", DiveLocation = "Coral ally", DiveExpLevel = 2, DiveCost = 250 },
        new Dive { DiveId = 554, DiveName = "Underwater Adventure", DiveDuration = "3 hours", DiveLocation = "Sandy Beach", DiveExpLevel = 3, DiveCost = 750 },
        new Dive { DiveId = 555, DiveName = "Deep Blue Ocean", DiveDuration = "30 minutes", DiveLocation = "Lazy Waves", DiveExpLevel = 2, DiveCost = 120 },
        new Dive { DiveId = 556, DiveName = "Rough Seas", DiveDuration = "1 hour", DiveLocation = "Pipe", DiveExpLevel = 9, DiveCost = 700 },
        new Dive { DiveId = 557, DiveName = "White Water", DiveDuration = "2 hours", DiveLocation = "Drifts", DiveExpLevel = 5, DiveCost = 200 },
        new Dive { DiveId = 558, DiveName = "Current Adventure", DiveDuration = "2 hours", DiveLocation = "Rock Lands", DiveExpLevel = 3, DiveCost = 150 }
    };

        public static List<DiveEvent> DiveEvents = new List<DiveEvent>
    {
        new DiveEvent { DiveEventId = "de_101", DiveDate = new DateTime(2017, 7, 15), DiveParticipants = 5, InsId = 103, CustId = "C115", DiveId = 558 },
        new DiveEvent { DiveEventId = "de_102", DiveDate = new DateTime(2017, 7, 16), DiveParticipants = 7, InsId = 102, CustId = "C117", DiveId = 555 },
        new DiveEvent { DiveEventId = "de_103", DiveDate = new DateTime(2017, 7, 18), DiveParticipants = 8, InsId = 104, CustId = "C118", DiveId = 552 },
        new DiveEvent { DiveEventId = "de_104", DiveDate = new DateTime(2017, 7, 19), DiveParticipants = 3, InsId = 101, CustId = "C119", DiveId = 551 },
        new DiveEvent { DiveEventId = "de_105", DiveDate = new DateTime(2017, 7, 21), DiveParticipants = 5, InsId = 104, CustId = "C121", DiveId = 558 },
        new DiveEvent { DiveEventId = "de_106", DiveDate = new DateTime(2017, 7, 22), DiveParticipants = 8, InsId = 105, CustId = "C120", DiveId = 556 },
        new DiveEvent { DiveEventId = "de_107", DiveDate = new DateTime(2017, 7, 25), DiveParticipants = 10, InsId = 105, CustId = "C115", DiveId = 554 },
        new DiveEvent { DiveEventId = "de_108", DiveDate = new DateTime(2017, 7, 27), DiveParticipants = 5, InsId = 101, CustId = "C122", DiveId = 552 },
        new DiveEvent { DiveEventId = "de_109", DiveDate = new DateTime(2017, 7, 28), DiveParticipants = 3, InsId = 102, CustId = "C123", DiveId = 553 }
    };

        public static string GetCustomerDetails(string custId)
        {
            var customer = Customers.FirstOrDefault(c => c.CustId == custId);

            if (customer != null)
            {
                return $"Customer ID: {customer.CustId}\nCustomer Name: {customer.CustFname} {customer.CustSname}\nCustomer Contact: {customer.CustContact}";
            }

            return "Customer not found.";
        }

        public static List<string> GetCustomerDiveEvents(string custId)
        {
            var diveEvents = DiveEvents.Where(de => de.CustId == custId).ToList();
            var results = new List<string>();

            foreach (var diveEvent in diveEvents)
            {
                var dive = Dives.FirstOrDefault(d => d.DiveId == diveEvent.DiveId);
                if (dive != null)
                {
                    results.Add($"Dive: {dive.DiveName}, Date: {diveEvent.DiveDate.ToShortDateString()}, Participants: {diveEvent.DiveParticipants}");
                }
            }

            return results;
        }
    }

}
