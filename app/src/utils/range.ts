export function range(start: number, stop: number) {
  return Array(stop - start)
    .fill(start)
    .map((value, index) => value + index);
}
