.class Lcom/octopus/ad/d/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/octopus/ad/d/d;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/octopus/ad/d/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/octopus/ad/d/d$a;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/content/Context;Lcom/octopus/ad/d/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/octopus/ad/d/d$1;->a:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/octopus/ad/d/d$1;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/octopus/ad/d/d$1;->c:Lcom/octopus/ad/d/d$a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-string v0, "An Exception Caught"

    .line 2
    .line 3
    const-string v1, "OctopusAd"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/octopus/ad/d/d$1;->a:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    iget-object v4, p0, Lcom/octopus/ad/d/d$1;->a:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 19
    .line 20
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iget-object v4, p0, Lcom/octopus/ad/d/d$1;->b:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v4}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 27
    .line 28
    .line 29
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 30
    :try_start_1
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 35
    .line 36
    .line 37
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 38
    :try_start_2
    iget-object v6, p0, Lcom/octopus/ad/d/d$1;->a:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    invoke-static {v4, v6}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 41
    .line 42
    .line 43
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :try_start_3
    invoke-static {v4, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 45
    .line 46
    .line 47
    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    const/high16 v8, 0x41a00000    # 20.0f

    .line 49
    .line 50
    :try_start_4
    invoke-virtual {v5, v8}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 60
    .line 61
    .line 62
    iget-object v8, p0, Lcom/octopus/ad/d/d$1;->c:Lcom/octopus/ad/d/d$a;

    .line 63
    .line 64
    invoke-interface {v8, v3}, Lcom/octopus/ad/d/d$a;->a(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 65
    .line 66
    .line 67
    if-eqz v4, :cond_0

    .line 68
    .line 69
    :try_start_5
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 76
    .line 77
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 78
    .line 79
    .line 80
    :cond_1
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5}, Landroid/renderscript/BaseObj;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :goto_1
    invoke-static {v1, v0, v2}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_8

    .line 91
    .line 92
    :catchall_0
    move-object v7, v2

    .line 93
    goto :goto_6

    .line 94
    :catch_1
    move-object v7, v2

    .line 95
    goto :goto_7

    .line 96
    :catchall_1
    move-object v6, v2

    .line 97
    :goto_2
    move-object v7, v6

    .line 98
    goto :goto_6

    .line 99
    :catch_2
    move-object v6, v2

    .line 100
    :goto_3
    move-object v7, v6

    .line 101
    goto :goto_7

    .line 102
    :catchall_2
    move-object v5, v2

    .line 103
    :goto_4
    move-object v6, v5

    .line 104
    goto :goto_2

    .line 105
    :catch_3
    move-object v5, v2

    .line 106
    :goto_5
    move-object v6, v5

    .line 107
    goto :goto_3

    .line 108
    :catchall_3
    move-object v4, v2

    .line 109
    move-object v5, v4

    .line 110
    goto :goto_4

    .line 111
    :catch_4
    move-object v4, v2

    .line 112
    move-object v5, v4

    .line 113
    goto :goto_5

    .line 114
    :catchall_4
    :goto_6
    :try_start_6
    iget-object v3, p0, Lcom/octopus/ad/d/d$1;->c:Lcom/octopus/ad/d/d$a;

    .line 115
    .line 116
    invoke-interface {v3, v2}, Lcom/octopus/ad/d/d$a;->a(Landroid/graphics/Bitmap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 117
    .line 118
    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    :try_start_7
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    .line 122
    .line 123
    .line 124
    :cond_2
    if-eqz v6, :cond_3

    .line 125
    .line 126
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 127
    .line 128
    .line 129
    :cond_3
    if-eqz v7, :cond_4

    .line 130
    .line 131
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 132
    .line 133
    .line 134
    :cond_4
    if-eqz v5, :cond_8

    .line 135
    .line 136
    invoke-virtual {v5}, Landroid/renderscript/BaseObj;->destroy()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_8

    .line 140
    :catchall_5
    move-exception v2

    .line 141
    goto :goto_9

    .line 142
    :catch_5
    :goto_7
    :try_start_8
    iget-object v3, p0, Lcom/octopus/ad/d/d$1;->c:Lcom/octopus/ad/d/d$a;

    .line 143
    .line 144
    invoke-interface {v3, v2}, Lcom/octopus/ad/d/d$a;->a(Landroid/graphics/Bitmap;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 145
    .line 146
    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    :try_start_9
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    .line 150
    .line 151
    .line 152
    :cond_5
    if-eqz v6, :cond_6

    .line 153
    .line 154
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 155
    .line 156
    .line 157
    :cond_6
    if-eqz v7, :cond_7

    .line 158
    .line 159
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 160
    .line 161
    .line 162
    :cond_7
    if-eqz v5, :cond_8

    .line 163
    .line 164
    invoke-virtual {v5}, Landroid/renderscript/BaseObj;->destroy()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 165
    .line 166
    .line 167
    :cond_8
    :goto_8
    return-void

    .line 168
    :goto_9
    if-eqz v4, :cond_9

    .line 169
    .line 170
    :try_start_a
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    .line 171
    .line 172
    .line 173
    goto :goto_a

    .line 174
    :catch_6
    move-exception v3

    .line 175
    goto :goto_b

    .line 176
    :cond_9
    :goto_a
    if-eqz v6, :cond_a

    .line 177
    .line 178
    invoke-virtual {v6}, Landroid/renderscript/Allocation;->destroy()V

    .line 179
    .line 180
    .line 181
    :cond_a
    if-eqz v7, :cond_b

    .line 182
    .line 183
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 184
    .line 185
    .line 186
    :cond_b
    if-eqz v5, :cond_c

    .line 187
    .line 188
    invoke-virtual {v5}, Landroid/renderscript/BaseObj;->destroy()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 189
    .line 190
    .line 191
    goto :goto_c

    .line 192
    :goto_b
    invoke-static {v1, v0, v3}, Lcom/octopus/ad/d/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :cond_c
    :goto_c
    throw v2
.end method
