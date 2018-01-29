using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ObjectData
/// </summary>
public class ObjectData
{
	public ObjectData()
	{
		
	}

    public Array getmethod(int one)
    {

        using (var entity = new EntityFrameworkTestEntities())
        {

            var first = (from r in entity.People.AsQueryable()
                         where r.PersonID == one
                         select new { r.PersonID, r.FirstName, r.LastName, r.City, r.Address });

            return first.ToArray();
        }

       
    }

    public Array getmethodLinq()
    {

        using (var entity = new EntityFrameworkTestEntities())
        {

            var first = (from r in entity.People.AsQueryable()
                         select new { r.PersonID, r.FirstName, r.LastName, r.City, r.Address });

            return first.ToArray();
        }


    }
}