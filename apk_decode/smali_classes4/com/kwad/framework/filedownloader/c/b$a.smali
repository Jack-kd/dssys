.class public abstract Lcom/kwad/framework/filedownloader/c/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/framework/filedownloader/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/framework/filedownloader/c/b$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.kwad.framework.filedownloader.i.IFileDownloadIPCService"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static CI()Lcom/kwad/framework/filedownloader/c/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/framework/filedownloader/c/b$a$a;->aCr:Lcom/kwad/framework/filedownloader/c/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static a(Landroid/os/IBinder;)Lcom/kwad/framework/filedownloader/c/b;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.kwad.framework.filedownloader.i.IFileDownloadIPCService"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Lcom/kwad/framework/filedownloader/c/b;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Lcom/kwad/framework/filedownloader/c/b;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Lcom/kwad/framework/filedownloader/c/b$a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/kwad/framework/filedownloader/c/b$a$a;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    const v2, 0x5f4e5446

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    const-string v4, "com.kwad.framework.filedownloader.i.IFileDownloadIPCService"

    .line 10
    .line 11
    if-eq p1, v2, :cond_6

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    packed-switch p1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/c/b;->CH()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-interface {p0, p1}, Lcom/kwad/framework/filedownloader/c/b;->cx(I)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    return v3

    .line 51
    :pswitch_2
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    move v5, v3

    .line 61
    :cond_0
    invoke-interface {p0, v5}, Lcom/kwad/framework/filedownloader/c/b;->stopForeground(Z)V

    .line 62
    .line 63
    .line 64
    return v3

    .line 65
    :pswitch_3
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_1

    .line 77
    .line 78
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    .line 80
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object v2, v0

    .line 85
    check-cast v2, Landroid/app/Notification;

    .line 86
    .line 87
    :cond_1
    invoke-interface {p0, p1, v2}, Lcom/kwad/framework/filedownloader/c/b;->startForeground(ILandroid/app/Notification;)V

    .line 88
    .line 89
    .line 90
    return v3

    .line 91
    :pswitch_4
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/c/b;->isIdle()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    return v3

    .line 105
    :pswitch_5
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-interface {p0, p1}, Lcom/kwad/framework/filedownloader/c/b;->cw(I)B

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 120
    .line 121
    .line 122
    return v3

    .line 123
    :pswitch_6
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    invoke-interface {p0, p1}, Lcom/kwad/framework/filedownloader/c/b;->cR(I)J

    .line 131
    .line 132
    .line 133
    move-result-wide v4

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    .line 139
    .line 140
    return v3

    .line 141
    :pswitch_7
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-interface {p0, p1}, Lcom/kwad/framework/filedownloader/c/b;->cQ(I)J

    .line 149
    .line 150
    .line 151
    move-result-wide v4

    .line 152
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 156
    .line 157
    .line 158
    return v3

    .line 159
    :pswitch_8
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    invoke-interface {p0, p1}, Lcom/kwad/framework/filedownloader/c/b;->cP(I)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    .line 175
    .line 176
    return v3

    .line 177
    :pswitch_9
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p0}, Lcom/kwad/framework/filedownloader/c/b;->pauseAllTasks()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    .line 185
    .line 186
    return v3

    .line 187
    :pswitch_a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    invoke-interface {p0, p1}, Lcom/kwad/framework/filedownloader/c/b;->cv(I)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    .line 203
    .line 204
    return v3

    .line 205
    :pswitch_b
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    move p1, v5

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_2

    .line 222
    .line 223
    move v7, v3

    .line 224
    goto :goto_0

    .line 225
    :cond_2
    move v7, p1

    .line 226
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_3

    .line 243
    .line 244
    move v11, v3

    .line 245
    goto :goto_1

    .line 246
    :cond_3
    move v11, p1

    .line 247
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    if-eqz v4, :cond_4

    .line 252
    .line 253
    sget-object v2, Lcom/kwad/framework/filedownloader/d/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 254
    .line 255
    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    check-cast v2, Lcom/kwad/framework/filedownloader/d/b;

    .line 260
    .line 261
    :cond_4
    move-object v12, v2

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eqz v0, :cond_5

    .line 267
    .line 268
    move v13, v3

    .line 269
    :goto_2
    move-object v4, p0

    .line 270
    goto :goto_3

    .line 271
    :cond_5
    move v13, p1

    .line 272
    goto :goto_2

    .line 273
    :goto_3
    invoke-interface/range {v4 .. v13}, Lcom/kwad/framework/filedownloader/c/b;->b(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/kwad/framework/filedownloader/d/b;Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    .line 278
    .line 279
    return v3

    .line 280
    :pswitch_c
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-interface {p0, v2, v0}, Lcom/kwad/framework/filedownloader/c/b;->z(Ljava/lang/String;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    .line 300
    .line 301
    return v3

    .line 302
    :pswitch_d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/c/a$a;->c(Landroid/os/IBinder;)Lcom/kwad/framework/filedownloader/c/a;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-interface {p0, v0}, Lcom/kwad/framework/filedownloader/c/b;->b(Lcom/kwad/framework/filedownloader/c/a;)V

    .line 314
    .line 315
    .line 316
    return v3

    .line 317
    :pswitch_e
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/kwad/framework/filedownloader/c/a$a;->c(Landroid/os/IBinder;)Lcom/kwad/framework/filedownloader/c/a;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-interface {p0, v0}, Lcom/kwad/framework/filedownloader/c/b;->a(Lcom/kwad/framework/filedownloader/c/a;)V

    .line 329
    .line 330
    .line 331
    return v3

    .line 332
    :cond_6
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    return v3

    .line 336
    nop

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
