declare module '@apiverve/ifsclookup' {
  export interface ifsclookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface ifsclookupResponse {
    status: string;
    error: string | null;
    data: IFSCLookupData;
    code?: number;
  }


  interface IFSCLookupData {
      bank:     string;
      ifsc:     string;
      branch:   string;
      address:  string;
      contact:  string;
      city:     string;
      district: string;
      state:    string;
      imps:     boolean;
      rtgs:     boolean;
      neft:     boolean;
      upi:      boolean;
      micr:     string;
      swift:    string;
  }

  export default class ifsclookupWrapper {
    constructor(options: ifsclookupOptions);

    execute(callback: (error: any, data: ifsclookupResponse | null) => void): Promise<ifsclookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: ifsclookupResponse | null) => void): Promise<ifsclookupResponse>;
    execute(query?: Record<string, any>): Promise<ifsclookupResponse>;
  }
}
