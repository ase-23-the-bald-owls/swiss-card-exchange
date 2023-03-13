export type Json = string | number | boolean | null | { [key: string]: Json } | Json[];

export interface Database {
  public: {
    Tables: {
      products: {
        Row: {
          content: string | null;
          created_at: string;
          id: number;
          inserted_at: string;
          title: string | null;
        };
        Insert: {
          content?: string | null;
          created_at?: string;
          id?: number;
          inserted_at?: string;
          title?: string | null;
        };
        Update: {
          content?: string | null;
          created_at?: string;
          id?: number;
          inserted_at?: string;
          title?: string | null;
        };
      };
    };
    Views: {
      [_ in never]: never;
    };
    Functions: {
      [_ in never]: never;
    };
    Enums: {
      [_ in never]: never;
    };
    CompositeTypes: {
      [_ in never]: never;
    };
  };
}
