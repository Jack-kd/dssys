.class public Lcom/meishu/sdk/meishu_ad/v$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZZZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/nativ/a;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/meishu/sdk/meishu_ad/nativ/f;

.field public final synthetic e:Z

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:Z

.field public final synthetic i:Ljava/util/List;

.field public final synthetic j:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Lcom/meishu/sdk/meishu_ad/nativ/a;ZLcom/meishu/sdk/meishu_ad/nativ/f;ZFFZLjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/v$g;->b:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/meishu/sdk/meishu_ad/v$g;->c:Z

    .line 8
    .line 9
    iput-object p5, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/meishu/sdk/meishu_ad/v$g;->e:Z

    .line 12
    .line 13
    iput p7, p0, Lcom/meishu/sdk/meishu_ad/v$g;->f:F

    .line 14
    .line 15
    iput p8, p0, Lcom/meishu/sdk/meishu_ad/v$g;->g:F

    .line 16
    .line 17
    iput-boolean p9, p0, Lcom/meishu/sdk/meishu_ad/v$g;->h:Z

    .line 18
    .line 19
    iput-object p10, p0, Lcom/meishu/sdk/meishu_ad/v$g;->i:Ljava/util/List;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iput-wide v1, v0, Lcom/meishu/sdk/meishu_ad/v;->o:J

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->c:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/meishu/sdk/meishu_ad/v$g$a;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/meishu/sdk/meishu_ad/v$g$a;-><init>(Lcom/meishu/sdk/meishu_ad/v$g;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/meishu/sdk/core/utils/a0;->a(Ljava/lang/String;Lcom/meishu/sdk/core/utils/a0$i;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->b:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 43
    .line 44
    const-string v2, "\u89c6\u9891\u8d44\u6e90\u9519\u8bef"

    .line 45
    .line 46
    sget-object v3, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v2, v3}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public success()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->b:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/meishu/sdk/meishu_ad/v$g;->c:Z

    .line 6
    .line 7
    iput-object v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->E:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 8
    .line 9
    iput-boolean v2, v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->F:Z

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setRecycler(Z)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->c:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 25
    .line 26
    iget v4, v4, Lcom/meishu/sdk/meishu_ad/nativ/f;->a:I

    .line 27
    .line 28
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setConfigWidth(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 34
    .line 35
    iget v4, v4, Lcom/meishu/sdk/meishu_ad/nativ/f;->b:I

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setConfigHeight(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 43
    .line 44
    iget-object v4, v4, Lcom/meishu/sdk/meishu_ad/nativ/f;->h:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoEndCover(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setInitMute(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoCover(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 66
    .line 67
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 68
    .line 69
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->h:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoEndCover(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 85
    .line 86
    iget-boolean v1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->e:Z

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setAutoStart(Z)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 92
    .line 93
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->f:F

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerWidth(F)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 99
    .line 100
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->g:F

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerHeight(F)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 107
    .line 108
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 109
    .line 110
    iget-object v4, v4, Lcom/meishu/sdk/meishu_ad/nativ/f;->g:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoPath(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 116
    .line 117
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 118
    .line 119
    invoke-virtual {v4}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoCover(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 129
    .line 130
    iget-object v4, v4, Lcom/meishu/sdk/meishu_ad/nativ/f;->h:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setVideoEndCover(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setPlayOnce(Z)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setUseTransform(Z)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 146
    .line 147
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->f:F

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerWidth(F)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 153
    .line 154
    iget v1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->g:F

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setContainerHeight(F)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lcom/meishu/sdk/core/AdSdk;->adConfig()Lcom/meishu/sdk/core/MSAdConfig;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/meishu/sdk/core/MSAdConfig;->showLogo()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_1

    .line 168
    .line 169
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 170
    .line 171
    const/4 v1, 0x0

    .line 172
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogoVisibility(I)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getFromLogo()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->setFromLogo(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :goto_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 193
    .line 194
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$g;->b:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 195
    .line 196
    iget-boolean v2, p0, Lcom/meishu/sdk/meishu_ad/v$g;->h:Z

    .line 197
    .line 198
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 199
    .line 200
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/v$g;->i:Ljava/util/List;

    .line 201
    .line 202
    invoke-static {v0, v1, v2, v3, v4}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZLcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Ljava/util/List;)V

    .line 203
    .line 204
    .line 205
    return-void
.end method
