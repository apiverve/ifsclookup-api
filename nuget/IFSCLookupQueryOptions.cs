using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.IFSCLookup
{
    /// <summary>
    /// Query options for the IFSC Lookup API
    /// </summary>
    public class IFSCLookupQueryOptions
    {
        /// <summary>
        /// The IFSC code to get information about
        /// Example: SBIN0005943
        /// </summary>
        [JsonProperty("ifsc")]
        public string Ifsc { get; set; }
    }
}
