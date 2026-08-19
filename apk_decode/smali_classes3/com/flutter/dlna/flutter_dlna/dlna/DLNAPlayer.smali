.class public final Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lorg/fourthline/cling/model/meta/Device;

.field public final c:Lorg/fourthline/cling/model/types/UDAServiceType;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/fourthline/cling/model/types/UDAServiceType;

    .line 5
    .line 6
    const-string v1, "AVTransport"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lorg/fourthline/cling/model/types/UDAServiceType;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->c:Lorg/fourthline/cling/model/types/UDAServiceType;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->a:Landroid/content/Context;

    .line 18
    .line 19
    return-void
.end method

.method public static bridge synthetic a(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lu0/a;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->h(Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lu0/a;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string v0, "&"

    .line 7
    .line 8
    const-string v1, "&amp;"

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "<"

    .line 15
    .line 16
    const-string v1, "&lt;"

    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, ">"

    .line 23
    .line 24
    const-string v1, "&gt;"

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "\""

    .line 31
    .line 32
    const-string v1, "&quot;"

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "\'"

    .line 39
    .line 40
    const-string v1, "&apos;"

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, ".m3u8"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string p0, "application/vnd.apple.mpegurl"

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    const-string v0, ".mpd"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string p0, "application/dash+xml"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    const-string v0, ".mp4"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string p0, "video/mp4"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const-string v0, ".mkv"

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    const-string p0, "video/x-matroska"

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    const-string v0, ".ts"

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    const-string p0, "video/mp2t"

    .line 58
    .line 59
    return-object p0

    .line 60
    :cond_4
    const-string p0, "video/*"

    .line 61
    .line 62
    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Lorg/fourthline/cling/support/model/Res;

    .line 2
    .line 3
    new-instance v1, Lorg/seamless/util/MimeType;

    .line 4
    .line 5
    const-string v2, "video"

    .line 6
    .line 7
    const-string v3, "*"

    .line 8
    .line 9
    invoke-direct {v1, v2, v3}, Lorg/seamless/util/MimeType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v1, v2, p1}, Lorg/fourthline/cling/support/model/Res;-><init>(Lorg/seamless/util/MimeType;Ljava/lang/Long;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    new-instance v2, Lorg/fourthline/cling/support/model/item/VideoItem;

    .line 30
    .line 31
    const-string v6, "unknown"

    .line 32
    .line 33
    filled-new-array {v0}, [Lorg/fourthline/cling/support/model/Res;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    const-string v4, "0"

    .line 38
    .line 39
    move-object v5, p2

    .line 40
    invoke-direct/range {v2 .. v7}, Lorg/fourthline/cling/support/model/item/VideoItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/fourthline/cling/support/model/Res;)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"no\"?><DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\">"

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/DIDLObject;->getId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/DIDLObject;->getParentID()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "<item id=\"%s\" parentID=\"%s\" restricted=\"1\">"

    .line 74
    .line 75
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/DIDLObject;->getTitle()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v1, "<dc:title>%s</dc:title>"

    .line 95
    .line 96
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/DIDLObject;->getClazz()Lorg/fourthline/cling/support/model/DIDLObject$Class;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lorg/fourthline/cling/support/model/DIDLObject$Class;->getValue()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string v1, "<upnp:class>%s</upnp:class>"

    .line 116
    .line 117
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 125
    .line 126
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance v1, Ljava/util/Date;

    .line 132
    .line 133
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const-string v1, "<dc:date>%s</dc:date>"

    .line 145
    .line 146
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Lorg/fourthline/cling/support/model/DIDLObject;->getFirstResource()Lorg/fourthline/cling/support/model/Res;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    .line 158
    .line 159
    invoke-static {p1}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v2, "protocolInfo=\"http-get:*:"

    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, ":*\""

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v1, "<res "

    .line 186
    .line 187
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v0, ">"

    .line 194
    .line 195
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-static {p1}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p1, "</res>"

    .line 206
    .line 207
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    :cond_0
    const-string p1, "</item>"

    .line 211
    .line 212
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string p1, "</DIDL-Lite>"

    .line 216
    .line 217
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    return-object p1
.end method

.method public d(Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/flutter/dlna/flutter_dlna/dlna/bean/DeviceInfo;->getDevice()Lorg/fourthline/cling/model/meta/Device;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->b:Lorg/fourthline/cling/model/meta/Device;

    .line 6
    .line 7
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->b:Lorg/fourthline/cling/model/meta/Device;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->d:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->e:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final h(Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lu0/a;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;

    .line 6
    .line 7
    move-object v7, p2

    .line 8
    move-object v2, p0

    .line 9
    move-object v6, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v8, p5

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$b;-><init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Ljava/lang/String;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Lu0/a;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->d:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->e:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public j(Lu0/a;)V
    .locals 8

    .line 1
    invoke-static {}, Lt0/e;->s()Lt0/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lt0/e;->t()Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    const/4 v0, 0x6

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    const-string v2, "UPnP service not ready"

    .line 14
    .line 15
    invoke-interface {p1, v1, v0, v2}, Lu0/a;->b(Lorg/fourthline/cling/model/action/ActionInvocation;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->b:Lorg/fourthline/cling/model/meta/Device;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const-string v2, "Device not selected"

    .line 24
    .line 25
    invoke-interface {p1, v1, v0, v2}, Lu0/a;->b(Lorg/fourthline/cling/model/action/ActionInvocation;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->d:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    :cond_2
    move-object v7, p1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->b:Lorg/fourthline/cling/model/meta/Device;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->c:Lorg/fourthline/cling/model/types/UDAServiceType;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_4

    .line 54
    .line 55
    const/4 v0, 0x5

    .line 56
    const-string v2, "AVTransport not found"

    .line 57
    .line 58
    invoke-interface {p1, v1, v0, v2}, Lu0/a;->b(Lorg/fourthline/cling/model/action/ActionInvocation;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->d:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->e:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-interface {v4}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;

    .line 75
    .line 76
    move-object v5, v3

    .line 77
    move-object v2, p0

    .line 78
    move-object v7, p1

    .line 79
    invoke-direct/range {v1 .. v7}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$a;-><init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;Lorg/fourthline/cling/model/meta/Service;Lorg/fourthline/cling/android/AndroidUpnpService;Lorg/fourthline/cling/model/meta/Service;Ljava/lang/String;Lu0/a;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_0
    const-string p1, "URL is empty"

    .line 87
    .line 88
    invoke-interface {v7, v1, v0, p1}, Lu0/a;->b(Lorg/fourthline/cling/model/action/ActionInvocation;ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public k(Lu0/a;)V
    .locals 4

    .line 1
    invoke-static {}, Lt0/e;->s()Lt0/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lt0/e;->t()Lorg/fourthline/cling/android/AndroidUpnpService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->b:Lorg/fourthline/cling/model/meta/Device;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v3, p0, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;->c:Lorg/fourthline/cling/model/types/UDAServiceType;

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lorg/fourthline/cling/model/meta/Device;->findService(Lorg/fourthline/cling/model/types/ServiceType;)Lorg/fourthline/cling/model/meta/Service;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    const-string v2, "AVTransport not found"

    .line 27
    .line 28
    invoke-interface {p1, v1, v0, v2}, Lu0/a;->b(Lorg/fourthline/cling/model/action/ActionInvocation;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-interface {v0}, Lorg/fourthline/cling/android/AndroidUpnpService;->getControlPoint()Lorg/fourthline/cling/controlpoint/ControlPoint;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$c;

    .line 37
    .line 38
    invoke-direct {v1, p0, v2, p1}, Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer$c;-><init>(Lcom/flutter/dlna/flutter_dlna/dlna/DLNAPlayer;Lorg/fourthline/cling/model/meta/Service;Lu0/a;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0, v1}, Lorg/fourthline/cling/controlpoint/ControlPoint;->execute(Lorg/fourthline/cling/controlpoint/ActionCallback;)Ljava/util/concurrent/Future;

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    :goto_0
    const/4 v0, 0x6

    .line 46
    const-string v2, "Not ready"

    .line 47
    .line 48
    invoke-interface {p1, v1, v0, v2}, Lu0/a;->b(Lorg/fourthline/cling/model/action/ActionInvocation;ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
