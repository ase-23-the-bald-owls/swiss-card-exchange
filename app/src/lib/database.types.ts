export type Json = string | number | boolean | null | { [key: string]: Json } | Json[];

export interface Database {
  public: {
    Tables: {
      addresses: {
        Row: {
          address: string;
          city: string;
          company: string | null;
          creator_expiry_time: string | null;
          firstname: string;
          id: number;
          name: string;
          zip_code: string;
        };
        Insert: {
          address: string;
          city: string;
          company?: string | null;
          creator_expiry_time?: string | null;
          firstname: string;
          id?: number;
          name: string;
          zip_code: string;
        };
        Update: {
          address?: string;
          city?: string;
          company?: string | null;
          creator_expiry_time?: string | null;
          firstname?: string;
          id?: number;
          name?: string;
          zip_code?: string;
        };
      };
      customer: {
        Row: {
          billing_address_id: number;
          creator_expiry_time: string | null;
          email: string;
          id: number;
          shipping_address_id: number;
          user_id: string | null;
        };
        Insert: {
          billing_address_id: number;
          creator_expiry_time?: string | null;
          email: string;
          id?: number;
          shipping_address_id: number;
          user_id?: string | null;
        };
        Update: {
          billing_address_id?: number;
          creator_expiry_time?: string | null;
          email?: string;
          id?: number;
          shipping_address_id?: number;
          user_id?: string | null;
        };
      };
      orderitem: {
        Row: {
          id: number;
          order_id: number | null;
          product_id: number | null;
          quantity: number | null;
        };
        Insert: {
          id?: number;
          order_id?: number | null;
          product_id?: number | null;
          quantity?: number | null;
        };
        Update: {
          id?: number;
          order_id?: number | null;
          product_id?: number | null;
          quantity?: number | null;
        };
      };
      orders: {
        Row: {
          creator_expiry_time: string | null;
          customer_id: number | null;
          id: number;
          notification_sent: boolean | null;
          order_state: string | null;
          payment_id: number | null;
        };
        Insert: {
          creator_expiry_time?: string | null;
          customer_id?: number | null;
          id?: number;
          notification_sent?: boolean | null;
          order_state?: string | null;
          payment_id?: number | null;
        };
        Update: {
          creator_expiry_time?: string | null;
          customer_id?: number | null;
          id?: number;
          notification_sent?: boolean | null;
          order_state?: string | null;
          payment_id?: number | null;
        };
      };
      payment: {
        Row: {
          id: number;
          payment_amount: number;
          payment_type: string | null;
        };
        Insert: {
          id?: number;
          payment_amount: number;
          payment_type?: string | null;
        };
        Update: {
          id?: number;
          payment_amount?: number;
          payment_type?: string | null;
        };
      };
      products: {
        Row: {
          attributes: string | null;
          card_type: string | null;
          created_at: string;
          description: string | null;
          id: number;
          price: number | null;
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
          price?: number | null;
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
          price?: number | null;
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
