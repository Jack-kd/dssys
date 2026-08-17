.class public Lcom/meishu/sdk/platform/ms/recycler/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/ms/recycler/i;->b(Landroid/content/Context;Lcom/meishu/sdk/core/domain/LayoutBean$StyleBean;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/view/RoundImageView;

.field public final synthetic b:Lcom/meishu/sdk/platform/ms/recycler/i;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/ms/recycler/i;Lcom/meishu/sdk/core/view/RoundImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 0
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meishu/sdk/core/domain/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u9519\u8bef"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 4
    .line 5
    .line 6
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-eqz v1, :cond_5

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, [B

    .line 14
    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    array-length v1, p1

    .line 18
    if-lez v1, :cond_4

    .line 19
    .line 20
    array-length v1, p1

    .line 21
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 28
    .line 29
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v2, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    .line 36
    .line 37
    invoke-virtual {p1, v1, v2}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 46
    .line 47
    invoke-static {v1, p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(Lcom/meishu/sdk/platform/ms/recycler/i;[B)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->setBytes([B)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->startAnimation()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/gif/GifImageView;->getGifHeight()I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    array-length v1, p1

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->a:Lcom/meishu/sdk/core/view/RoundImageView;

    .line 83
    .line 84
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 88
    .line 89
    iget-boolean v1, p1, Lcom/meishu/sdk/platform/ms/recycler/i;->g:Z

    .line 90
    .line 91
    if-nez v1, :cond_6

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    invoke-static {p1, v1}, Lcom/meishu/sdk/platform/ms/recycler/i;->d(Lcom/meishu/sdk/platform/ms/recycler/i;Z)Z

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->c(Lcom/meishu/sdk/platform/ms/recycler/i;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 104
    .line 105
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {p1, v1, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 116
    .line 117
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {p1, v1, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorCode()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getErrorDescription()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {v1, v2, p1}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/meishu/sdk/platform/ms/recycler/i$c;->b:Lcom/meishu/sdk/platform/ms/recycler/i;

    .line 149
    .line 150
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    invoke-virtual {p1, v1, v0}, Lcom/meishu/sdk/platform/ms/recycler/i;->a(ILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_3
    return-void
.end method
