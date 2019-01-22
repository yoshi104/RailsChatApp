App.chat = App.cable.subscriptions.create("ChatMessageChannel",{
  connected: function(){
  },
  disconnected: function(){
  },
  received: function(data){
      return $('#bms_messages').append('<div class="bms_message bms_left"><div class="bms_message_box"><div class="bms_message_content"><div class="bms_message_text">'+data.message+'</div></div></div></div><div class="bms_clear"></div>');
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