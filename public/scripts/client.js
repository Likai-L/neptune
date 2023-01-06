/*
 * Client-side JS logic
 */

$(() => {
  $('.new-task-form').on('submit', function (event) {
    event.preventDefault();
    submitNewTask(this);
  });

  $('#delete-btn').on('submit', function (event) {
    event.preventDefault();
    const taskID = $(this).closest('li').attr('id').slice(8);
    deleteTask(taskID);

  });

  loadTasks("incomplete");

  loadTasksByCategory();

  setDefaultDate();
});
