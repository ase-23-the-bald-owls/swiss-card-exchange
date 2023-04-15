import { WritableAtom } from 'jotai';

export type SimpleWriteableAtom<T> = WritableAtom<T, [newItem: T], void>;
