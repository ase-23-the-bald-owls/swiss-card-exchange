export type Json = string | number | boolean | null | { [key: string]: Json } | Json[];

export interface Database {
  public: {
    Tables: {
      products: {
        Row: {
          attributes: string | null;
          card_type: string | null;
          created_at: string;
          description: string | null;
          id: number;
          inserted_at: string;
          rarity: string | null;
          set: string | null;
          title: string | null;
          types: string | null;
        };
        Insert: {
          attributes?: string | null;
          card_type?: string | null;
          created_at?: string;
          description?: string | null;
          id?: number;
          inserted_at?: string;
          rarity?: string | null;
          set?: string | null;
          title?: string | null;
          types?: string | null;
        };
        Update: {
          attributes?: string | null;
          card_type?: string | null;
          created_at?: string;
          description?: string | null;
          id?: number;
          inserted_at?: string;
          rarity?: string | null;
          set?: string | null;
          title?: string | null;
          types?: string | null;
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
