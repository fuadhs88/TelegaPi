unit TelegramBotApi.Types.Enums;

interface

type
{$SCOPEDENUMS ON}
  /// <summary>
  /// The type of a Message
  /// </summary>
  TtgMessageType = (Unknown = 0, Text, Photo, Audio, Video, VideoNote, Voice, Document, Sticker, Game, Location,
    Contact, Service, Venue, Poll);

  TtgParseMode = (Default, Markdown, MarkdownV2, HTML);

  /// <summary>
  /// The type of an Update
  /// </summary>
  TtgUpdateType = (
    /// <summary>
    /// Update Type is unknown
    /// </summary>
    UnknownUpdate = 0,

    /// <summary>
    /// The <see cref="Update" /> contains a <see cref="Message" />.
    /// </summary>
    MessageUpdate,

    /// <summary>
    /// The <see cref="Update" /> contains an <see cref="InlineQuery" />.
    /// </summary>
    InlineQueryUpdate,

    /// <summary>
    /// The <see cref="Update" /> contains a <see cref="ChosenInlineResult" />
    /// </summary>
    ChosenInlineResultUpdate,

    /// <summary>
    /// The <see cref="Update" /> contins a <see cref="CallbackQuery" />
    /// </summary>
    CallbackQueryUpdate,

    /// <summary>
    /// The <see cref="Update" /> contains an edited <see cref="Message" />
    /// </summary>
    EditedMessage,

    /// <summary>
    /// The <see cref="Update" /> contains a channel post <see cref="Message" />
    /// </summary>
    ChannelPost,

    /// <summary>
    /// The <see cref="Update" /> contains an edited channel post <see cref="Message" />
    /// </summary>
    EditedChannelPost,

    /// <summary>
    /// The <see cref="Update" /> contains an <see cref="ShippingQueryUpdate" />
    /// </summary>
    ShippingQueryUpdate,

    /// <summary>
    /// The <see cref="Update" /> contains an <see cref="PreCheckoutQueryUpdate" />
    /// </summary>
    PreCheckoutQueryUpdate,

    /// <summary>
    /// Receive all <see cref="Update" /> Types
    /// </summary>
    All = 255);

  TtgMessageEntityType = (
    /// <summary>
    /// A mentioned <see cref="User"/>
    /// </summary>
    Mention,
    /// <summary>
    /// A searchable Hashtag
    /// </summary>
    Hashtag,
    /// <summary>
    /// A Bot command
    /// </summary>
    BotCommand,
    /// <summary>
    /// An url
    /// </summary>
    Url,
    /// <summary>
    /// An email
    /// </summary>
    Email,
    /// <summary>
    /// Bold text
    /// </summary>
    Bold,
    /// <summary>
    /// Italic text
    /// </summary>
    Italic,
    /// <summary>
    /// Monowidth string
    /// </summary>
    Code,
    /// <summary>
    /// Monowidth block
    /// </summary>
    Pre,
    /// <summary>
    /// Clickable text urls
    /// </summary>
    TextLink,
    /// <summary>
    /// Mentions for a <see cref="User"/> without <see cref="User.Username"/>
    /// </summary>
    TextMention,
    /// <summary>
    /// Phone number
    /// </summary>
    PhoneNumber,
    /// <summary>
    /// A cashtag (e.g. $EUR, $USD) - $ followed by the short currency code
    /// </summary>
    Cashtag,
    /// <summary>
    /// Unknown entity type
    /// </summary>
    Unknown,
    /// <summary>
    /// Underlined text
    /// </summary>
    Underline,
    /// <summary>
    /// Strikethrough text
    /// </summary>
    Strikethrough);
  /// <summary>
  /// Type of action the Bot is performing
  /// </summary>

  TtgChatAction = (
    /// <summary>
    /// Typing
    /// </summary>
    Typing,
    /// <summary>
    /// Uploading a <see cref="PhotoSize"/>
    /// </summary>
    UploadPhoto,
    /// <summary>
    /// Recording a <see cref="Video"/>
    /// </summary>
    RecordVideo,
    /// <summary>
    /// Uploading a <see cref="Video"/>
    /// </summary>
    UploadVideo,
    /// <summary>
    /// Recording an <see cref="Audio"/>
    /// </summary>
    RecordVoice,
    /// <summary>
    /// Uploading an <see cref="Audio"/>
    /// </summary>
    UploadVoice,
    /// <summary>
    /// Uploading <see cref="Document"/>
    /// </summary>
    UploadDocument,
    /// <summary>
    /// Finding a <see cref="Location"/>
    /// </summary>
    FindLocation,
    /// <summary>
    /// Recording a <see cref="VideoNote"/>
    /// </summary>
    RecordVideoNote,
    /// <summary>
    /// Uploading a <see cref="VideoNote"/>
    /// </summary>
    UploadVideoNote);

{$SCOPEDENUMS OFF}
  TAllowedUpdate = (message, Edited_message, Channel_post, Edited_channel_post, Inline_query, Chosen_inline_result,
    Callback_query);
  TAllowedUpdates = set of TAllowedUpdate;

const
  UPDATES_ALLOWED_ALL = [Low(TAllowedUpdate) .. High(TAllowedUpdate)];

implementation

end.
