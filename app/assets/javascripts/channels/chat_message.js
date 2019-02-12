App.chat = App.cable.subscriptions.create("ChatMessageChannel",{
  connected: function(){
  },
  disconnected: function(){
  },
  received: function(data){
    //   console.log(data.user_id);
    //   console.log($('#user_id').val());
      if( data.user_id == $('#user_id').val() ){
      return $('#bms_messages').append('<div class="bms_message bms_right"><div class="bms_message_box"><div class="bms_message_content"><div class="bms_message_text">'+data.message+'</div></div></div></div><div class="bms_clear"></div>');
      } else {
      return $('#bms_messages').append('<div class="message_partner">'+data.user_id+'</div><div class="bms_message bms_left"><div class="bms_message_box"><div class="bms_message_content"><div class="bms_message_text">'+data.message+'</div></div></div></div><div class="bms_clear"></div>');
      }
  },
  speak: function(message, user_id){
      return this.perform('speak', { message: message, user_id: user_id});
  }
}, $(document).on('click', '#bms_send_btn', function(event) {
    var chatForm = $('#chat_speak');
    var user_id = $('#user_id');
    App.chat.speak(chatForm.val(), user_id.val(),);
    $('#chat_speak').val('');
    return;
})
, $(document).on('keypress', '[data-behavior~=speak_chat_messages]', function(event) {
    if (event.keyCode === 13) {
        var chatForm = $('#chat_speak');
        var user_id = $('#user_id');
        App.chat.speak(chatForm.val(), user_id.val(),);
        $('#chat_speak').val('');
        return;
    }
  })
);