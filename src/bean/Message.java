package bean;

public class Message {
    private int messageId;
    private String messagePoster;
    private String messageContent;
    private int messageNewsId;

    public int getMessageId() {
        return messageId;
    }

    public Message setMessageId(int messageId) {
        this.messageId = messageId;
        return this;
    }

    public String getMessagePoster() {
        return messagePoster;
    }

    public Message setMessagePoster(String messagePoster) {
        this.messagePoster = messagePoster;
        return this;
    }

    public String getMessageContent() {
        return messageContent;
    }

    public Message setMessageContent(String messageContent) {
        this.messageContent = messageContent;
        return this;
    }

    public int getMessageNewsId() {
        return messageNewsId;
    }

    public Message setMessageNewsId(int messageNewsId) {
        this.messageNewsId = messageNewsId;
        return this;
    }
}
