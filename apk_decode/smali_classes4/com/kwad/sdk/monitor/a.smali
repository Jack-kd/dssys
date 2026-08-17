.class public final Lcom/kwad/sdk/monitor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static d(Lcom/kwad/sdk/api/SdkConfig;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_f

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->canReadLocation()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadLocation:I

    .line 21
    .line 22
    :cond_1
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->getLocation()Landroid/location/Location;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getLocation:I

    .line 31
    .line 32
    :cond_2
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->getKsLocation()Lcom/kwad/sdk/api/KsLocation;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getKsLocation:I

    .line 41
    .line 42
    :cond_3
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->canUsePhoneState()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUsePhoneState:I

    .line 51
    .line 52
    :cond_4
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->getImei()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_5

    .line 63
    .line 64
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImei:I

    .line 65
    .line 66
    :cond_5
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->getImeis()[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getImeis:I

    .line 75
    .line 76
    :cond_6
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->getAndroidId()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_7

    .line 87
    .line 88
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getAndroidId:I

    .line 89
    .line 90
    :cond_7
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->canUseOaid()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_8

    .line 97
    .line 98
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseOaid:I

    .line 99
    .line 100
    :cond_8
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->getOaid()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_9

    .line 111
    .line 112
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getOaid:I

    .line 113
    .line 114
    :cond_9
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 115
    .line 116
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->canUseMacAddress()Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_a

    .line 121
    .line 122
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseMacAddress:I

    .line 123
    .line 124
    :cond_a
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->getMacAddress()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_b

    .line 135
    .line 136
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getMacAddress:I

    .line 137
    .line 138
    :cond_b
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->canUseNetworkState()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_c

    .line 145
    .line 146
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseNetworkState:I

    .line 147
    .line 148
    :cond_c
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->canUseStoragePermission()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_d

    .line 155
    .line 156
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canUseStoragePermission:I

    .line 157
    .line 158
    :cond_d
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->canReadInstalledPackages()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_e

    .line 165
    .line 166
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadInstalledPackages:I

    .line 167
    .line 168
    :cond_e
    iget-object v1, p0, Lcom/kwad/sdk/api/SdkConfig;->ksCustomController:Lcom/kwad/sdk/api/KsCustomController;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/kwad/sdk/api/KsCustomController;->getInstalledPackages()Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-eqz v1, :cond_f

    .line 175
    .line 176
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->getInstalledPackages:I

    .line 177
    .line 178
    :cond_f
    invoke-virtual {p0}, Lcom/kwad/sdk/api/SdkConfig;->canReadMacAddress()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_10

    .line 183
    .line 184
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadMacAddress:I

    .line 185
    .line 186
    :cond_10
    invoke-virtual {p0}, Lcom/kwad/sdk/api/SdkConfig;->canReadNearbyWifiList()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_11

    .line 191
    .line 192
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadNearbyWifiList:I

    .line 193
    .line 194
    :cond_11
    invoke-virtual {p0}, Lcom/kwad/sdk/api/SdkConfig;->canReadICCID()Z

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    if-eqz p0, :cond_12

    .line 199
    .line 200
    iput v2, v0, Lcom/kwad/sdk/monitor/MediaMessageInfo$MediaPermissionInfo;->canReadICCID:I

    .line 201
    .line 202
    :cond_12
    invoke-static {}, Lcom/kwad/sdk/monitor/MediaMessageInfo;->Sw()Lcom/kwad/sdk/monitor/MediaMessageInfo;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-static {}, Lcom/kwad/sdk/utils/bt;->WM()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p0, v1}, Lcom/kwad/sdk/monitor/MediaMessageInfo;->hh(Ljava/lang/String;)Lcom/kwad/sdk/monitor/MediaMessageInfo;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {v0}, Lcom/kwad/sdk/core/response/a/a;->toJson()Lorg/json/JSONObject;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/monitor/MediaMessageInfo;->hi(Ljava/lang/String;)Lcom/kwad/sdk/monitor/MediaMessageInfo;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-static {}, Lcom/kwad/sdk/service/ServiceProvider;->getAppId()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/monitor/MediaMessageInfo;->hj(Ljava/lang/String;)Lcom/kwad/sdk/monitor/MediaMessageInfo;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    const/4 v0, 0x2

    .line 235
    invoke-virtual {p0, v0}, Lcom/kwad/sdk/monitor/MediaMessageInfo;->fi(I)Lcom/kwad/sdk/monitor/MediaMessageInfo;

    .line 236
    .line 237
    .line 238
    move-result-object p0

    .line 239
    const/4 v0, 0x0

    .line 240
    invoke-static {p0, v0}, Lcom/kwad/sdk/commercial/c;->f(Lcom/kwad/sdk/commercial/c/a;Z)V

    .line 241
    .line 242
    .line 243
    return-void
.end method
