using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Cookie
/// </summary>
public class Cookie
{
    #region Members

    public static string JOB_CART_COOKIE_NAME = "JobCart";

    #endregion

    #region Enumerators

    public enum WriteModes
    {
        Append = 0,
        Overwrite = 1
    }

    #endregion

    public Cookie()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static bool CookieContainsValue(string cookieName, string value)
    {
        return ReadCookie(cookieName).Contains(value);
    }

    public static bool WriteCookie(string cookieName, string value, WriteModes mode)
    {
        bool retVal = false;
        bool newCookie = false;
        HttpCookie cookie = null;

        try
        {
            // Set a reference to the cookie
            cookie = HttpContext.Current.Request.Cookies[cookieName];

            // Check to see if the cookie exists
            if (cookie == null)
            {
                // It doesnt, set a reference to a brand new cookie
                cookie = new HttpCookie(cookieName);

                // This is a new cookie
                newCookie = true;
            }

            // Check to see if we should overwrite the existing cookie
            if (mode == WriteModes.Overwrite)
            {
                // Set the cookie value.
                cookie.Value = value;

                // Set the cookie expiration date.
                cookie.Expires = DateTime.Now.AddDays(30);

                // Add the cookie.
                HttpContext.Current.Response.Cookies.Add(cookie);
            }
            else
            {
                // Dont write duplicate values to the cookie
                if (newCookie || !(cookie.Value.Contains(value)))
                {
                    // Check to see if the cookie contains at least 1 value
                    if (!(string.IsNullOrEmpty(cookie.Value)))
                    {
                        // It does, comma delimit the list
                        cookie.Value += value + ",";
                    }
                    else
                    {
                        // Set the cookie value.
                        cookie.Value = value + ",";
                    }

                    // Set the cookie expiration date.
                    cookie.Expires = DateTime.Now.AddDays(30);

                    // Add the cookie.
                    HttpContext.Current.Response.Cookies.Add(cookie);
                }
            }

            // Success!
            retVal = true;
        }
        catch
        {
        }

        return retVal;
    }

    public static string ReadCookie(string cookieName)
    {
        string retVal = string.Empty;
        HttpCookie cookie = null;

        try
        {
            cookie = HttpContext.Current.Request.Cookies[cookieName];

            // Read the cookie information and display it.
            if (cookie != null)
            {
                retVal = cookie.Value;
            }
        }
        catch
        {
        }

        return retVal;
    }

    public static bool RemoveValueFromCookie(string cookieName, string value)
    {
        bool retVal = false;

        try
        {
            // Automatically remove the appended comma
            value += ",";

            string cookieValue = ReadCookie(cookieName);

            // Check to see if the value exists in the current cookie
            if (cookieValue.Contains(value))
            {
                // It does, remove it
                cookieValue = cookieValue.Remove(cookieValue.IndexOf(value), value.Length);

                // Write the new cookie with the new value
                retVal = WriteCookie(cookieName, cookieValue, WriteModes.Overwrite);
            }

            // Success!
            retVal &= true;
        }
        catch
        {
        }

        return retVal;
    }
}