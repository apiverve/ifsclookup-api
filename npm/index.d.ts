declare module '@apiverve/ifsclookup' {
  export interface ifsclookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface ifsclookupResponse {
    status: string;
    error: string | null;
    data: IFSCLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface IFSCLookupData {
      bank:     null | string;
      ifsc:     null | string;
      branch:   null | string;
      contact:  null | string;
      city:     null | string;
      district: null | string;
      state:    null | string;
      imps:     boolean | null;
      rtgs:     boolean | null;
      neft:     boolean | null;
      upi:      boolean | null;
      micr:     null | string;
      swift:    null | string;
  }

  export default class ifsclookupWrapper {
    constructor(options: ifsclookupOptions);

    execute(callback: (error: any, data: ifsclookupResponse | null) => void): Promise<ifsclookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: ifsclookupResponse | null) => void): Promise<ifsclookupResponse>;
    execute(query?: Record<string, any>): Promise<ifsclookupResponse>;
  }
}
