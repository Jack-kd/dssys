.class public Lcom/meishu/sdk/meishu_ad/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/y;


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/splash/c;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/splash/d;

.field public final synthetic c:Lcom/meishu/sdk/meishu_ad/splash/a;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;

.field public final synthetic g:Lcom/meishu/sdk/meishu_ad/v;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;Lcom/meishu/sdk/meishu_ad/splash/a;IILandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/d0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/meishu/sdk/meishu_ad/d0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/meishu/sdk/meishu_ad/d0;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 8
    .line 9
    iput p5, p0, Lcom/meishu/sdk/meishu_ad/d0;->d:I

    .line 10
    .line 11
    iput p6, p0, Lcom/meishu/sdk/meishu_ad/d0;->e:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/meishu/sdk/meishu_ad/d0;->f:Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onFailure(Ljava/io/IOException;)V
    .locals 8
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    iput v0, p1, Lcom/meishu/sdk/meishu_ad/v;->v:I

    .line 5
    .line 6
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "video cover load error cid:"

    .line 15
    .line 16
    invoke-static {v1}, Lcom/meishu/sdk/activity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/d0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x895443

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v2, v1}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 40
    .line 41
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 42
    .line 43
    if-ne p1, v0, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 46
    .line 47
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->w:I

    .line 48
    .line 49
    if-ne p1, v0, :cond_0

    .line 50
    .line 51
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d0;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 54
    .line 55
    sget-object v1, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 56
    .line 57
    const-string v2, "video load error,def isnull"

    .line 58
    .line 59
    invoke-virtual {p1, v0, v2, v1}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 64
    .line 65
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 66
    .line 67
    if-ne p1, v0, :cond_1

    .line 68
    .line 69
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/d0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/d0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 74
    .line 75
    iget v4, p0, Lcom/meishu/sdk/meishu_ad/d0;->d:I

    .line 76
    .line 77
    iget v5, p0, Lcom/meishu/sdk/meishu_ad/d0;->e:I

    .line 78
    .line 79
    iget-object v6, p0, Lcom/meishu/sdk/meishu_ad/d0;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 80
    .line 81
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/d0;->f:Landroid/view/View;

    .line 82
    .line 83
    invoke-static/range {v1 .. v7}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;IILcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void
.end method

.method public onResponse(Lcom/meishu/sdk/core/domain/HttpResponse;)V
    .locals 9
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
    :try_start_0
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "video cover \u52a0\u8f7d\u6210\u529f"

    .line 17
    .line 18
    const/16 v3, 0xc8

    .line 19
    .line 20
    invoke-static {v0, v3, v2}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/meishu/sdk/core/domain/HttpResponse;->getResponseBody()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, [B

    .line 30
    .line 31
    iput-object p1, v0, Lcom/meishu/sdk/meishu_ad/v;->t:[B

    .line 32
    .line 33
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    iput v0, p1, Lcom/meishu/sdk/meishu_ad/v;->v:I

    .line 37
    .line 38
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 39
    .line 40
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 41
    .line 42
    if-ne p1, v1, :cond_2

    .line 43
    .line 44
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 45
    .line 46
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/d0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/d0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 49
    .line 50
    iget v5, p0, Lcom/meishu/sdk/meishu_ad/d0;->d:I

    .line 51
    .line 52
    iget v6, p0, Lcom/meishu/sdk/meishu_ad/d0;->e:I

    .line 53
    .line 54
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/d0;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 55
    .line 56
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/d0;->f:Landroid/view/View;

    .line 57
    .line 58
    invoke-static/range {v2 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;IILcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    move-object p1, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 66
    .line 67
    iput v1, p1, Lcom/meishu/sdk/meishu_ad/v;->v:I

    .line 68
    .line 69
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/splash/c;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getEventUrl()[Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v2, "video cover load error cid:"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/d0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getCid()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const v2, 0x895443

    .line 101
    .line 102
    .line 103
    invoke-static {p1, v2, v0}, Lcom/meishu/sdk/core/utils/p1;->c([Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 107
    .line 108
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 109
    .line 110
    if-ne p1, v1, :cond_1

    .line 111
    .line 112
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 113
    .line 114
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->w:I

    .line 115
    .line 116
    if-ne p1, v1, :cond_1

    .line 117
    .line 118
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/d0;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 121
    .line 122
    const-string v1, "video load error,def isnull"

    .line 123
    .line 124
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 131
    .line 132
    iget p1, p1, Lcom/meishu/sdk/meishu_ad/v;->u:I

    .line 133
    .line 134
    if-ne p1, v1, :cond_2

    .line 135
    .line 136
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/d0;->g:Lcom/meishu/sdk/meishu_ad/v;

    .line 137
    .line 138
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/d0;->a:Lcom/meishu/sdk/meishu_ad/splash/c;

    .line 139
    .line 140
    iget-object v4, p0, Lcom/meishu/sdk/meishu_ad/d0;->b:Lcom/meishu/sdk/meishu_ad/splash/d;

    .line 141
    .line 142
    iget v5, p0, Lcom/meishu/sdk/meishu_ad/d0;->d:I

    .line 143
    .line 144
    iget v6, p0, Lcom/meishu/sdk/meishu_ad/d0;->e:I

    .line 145
    .line 146
    iget-object v7, p0, Lcom/meishu/sdk/meishu_ad/d0;->c:Lcom/meishu/sdk/meishu_ad/splash/a;

    .line 147
    .line 148
    iget-object v8, p0, Lcom/meishu/sdk/meishu_ad/d0;->f:Landroid/view/View;

    .line 149
    .line 150
    invoke-static/range {v2 .. v8}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/v;Lcom/meishu/sdk/meishu_ad/splash/c;Lcom/meishu/sdk/meishu_ad/splash/d;IILcom/meishu/sdk/meishu_ad/splash/a;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    .line 153
    :cond_2
    return-void

    .line 154
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    .line 156
    .line 157
    return-void
.end method
