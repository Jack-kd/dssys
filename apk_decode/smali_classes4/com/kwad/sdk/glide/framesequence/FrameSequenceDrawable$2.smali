.class final Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$000(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$100(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$200(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-gez v1, :cond_1

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$300(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    invoke-static {v3, v4}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$402(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;I)I

    .line 41
    .line 42
    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    add-int/lit8 v0, v1, -0x2

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    const/4 v5, 0x0

    .line 48
    :try_start_1
    iget-object v6, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 49
    .line 50
    invoke-static {v6}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$500(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v6, v1, v2, v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequence$State;->getFrame(ILandroid/graphics/Bitmap;I)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    move v2, v5

    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "FrameSequenceDrawable"

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v6, "exception during decode: "

    .line 66
    .line 67
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const-wide/16 v0, 0x0

    .line 81
    .line 82
    move v2, v3

    .line 83
    :goto_0
    const-wide/16 v6, 0x14

    .line 84
    .line 85
    cmp-long v6, v0, v6

    .line 86
    .line 87
    if-gez v6, :cond_2

    .line 88
    .line 89
    const-wide/16 v0, 0x64

    .line 90
    .line 91
    :cond_2
    iget-object v6, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 92
    .line 93
    invoke-static {v6}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$000(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    monitor-enter v6

    .line 98
    :try_start_2
    iget-object v7, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 99
    .line 100
    invoke-static {v7}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$100(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    const/4 v8, 0x0

    .line 105
    if-eqz v7, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 108
    .line 109
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$300(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Landroid/graphics/Bitmap;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 114
    .line 115
    invoke-static {v1, v8}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$302(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-object v8, v0

    .line 119
    :cond_3
    move v3, v5

    .line 120
    goto :goto_2

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    goto :goto_3

    .line 123
    :cond_4
    iget-object v7, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 124
    .line 125
    invoke-static {v7}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$200(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-ltz v7, :cond_3

    .line 130
    .line 131
    iget-object v7, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 132
    .line 133
    invoke-static {v7}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$400(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    if-ne v7, v4, :cond_3

    .line 138
    .line 139
    iget-object v4, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 140
    .line 141
    if-eqz v2, :cond_5

    .line 142
    .line 143
    const-wide v0, 0x7fffffffffffffffL

    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_5
    invoke-static {v4}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$700(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)J

    .line 150
    .line 151
    .line 152
    move-result-wide v9

    .line 153
    add-long/2addr v0, v9

    .line 154
    :goto_1
    invoke-static {v4, v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$602(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;J)J

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 158
    .line 159
    const/4 v1, 0x3

    .line 160
    invoke-static {v0, v1}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$402(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;I)I

    .line 161
    .line 162
    .line 163
    :goto_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    if-eqz v3, :cond_6

    .line 165
    .line 166
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$600(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v1

    .line 172
    invoke-virtual {v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 173
    .line 174
    .line 175
    :cond_6
    if-eqz v8, :cond_7

    .line 176
    .line 177
    iget-object v0, p0, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$2;->bgE:Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;->access$800(Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable;)Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$a;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-interface {v0, v8}, Lcom/kwad/sdk/glide/framesequence/FrameSequenceDrawable$a;->a(Landroid/graphics/Bitmap;)V

    .line 184
    .line 185
    .line 186
    :cond_7
    return-void

    .line 187
    :goto_3
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    throw v0

    .line 189
    :goto_4
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    throw v1
.end method
