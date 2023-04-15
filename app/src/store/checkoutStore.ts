import { atom } from 'jotai';

export const addressFields = {
  name: '',
  firstname: '',
  company: '',
  address: '',
  zipCode: '',
  city: '',
};

export type Address = typeof addressFields;

export const shippingAddressFields = {
  ...addressFields,
  email: '',
};

export type ShippingAddress = typeof shippingAddressFields;

export const shippingAddressAtom = atom<ShippingAddress | null>(null);

export const billingAddressAtom = atom<Address | null>(null);

export const billingAddressSameAsShippingAddressAtom = atom(false);

export const getBillingAddressAtom = atom((get) => {
  if (get(billingAddressSameAsShippingAddressAtom)) {
    return get(shippingAddressAtom);
  }
  return get(billingAddressAtom);
});

export const paymentAmountAtom = atom<number | null>(null);
