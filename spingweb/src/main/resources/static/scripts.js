addEventListener('DOMContentLoaded', () => {
  let table = new DataTable('#myTable', {
    ajax: '/data.json',
    columns: [
      { data: 'name' },
      { data: 'position' },
      { data: 'office' },
      { data: 'extn' },
      { data: 'start_date' },
      { data: 'salary' }
    ]
  });
});
