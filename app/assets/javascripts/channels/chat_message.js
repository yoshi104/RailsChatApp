App.chat = App.cable.subscriptions.create("ChatMessageChannel",{
  connected: function(){
  },
  disconnected: function(){
  },
  received: function(data){
      return $('#chat_messages').append('<li>'+data.user_name, +data.message+'</li>');
  },
  speak: function(message, user_id){
      return this.perform('speak', { message: message, user_id: user_id});
  }
}, $(document).on('keypress', '[data-behavior~=speak_chat_messages]', function(event) {
  if (event.keyCode === 13) {
      var chatForm = $('#chat_speak');
      var user_id = $('#user_id');
      App.chat.speak(chatForm.val(), user_id.val(),);
      return;
  }
}));