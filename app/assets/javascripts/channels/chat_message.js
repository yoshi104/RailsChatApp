App.chat = App.cable.subscriptions.create("ChatMessageChannel",{
  connected: function(){
  },
  disconnected: function(){
  },
  received: function(data){
      return $('#chat_messages').append('<li>'+data.message+'</li>');
  },
  speak: function(message){
      return this.perform('speak', { message: message});
  }
}, $(document).on('keypress', '[data-behavior~=speak_chat_messages]', function(event) {
  if (event.keyCode === 13) {
      var chatForm = $('#chat_speak');
      App.chat.speak(chatForm.val());
      return;
  }
}));