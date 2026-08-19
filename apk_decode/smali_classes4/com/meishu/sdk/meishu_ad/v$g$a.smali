.class public Lcom/meishu/sdk/meishu_ad/v$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/utils/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/v$g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/v$g;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/v$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/v$g$a;->a:Lcom/meishu/sdk/meishu_ad/v$g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g$a;->a:Lcom/meishu/sdk/meishu_ad/v$g;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/v$g;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$g;->b:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 6
    .line 7
    sget-object v2, Lcom/meishu/sdk/core/exception/ErrorCodeUtil;->RES_LOAD_ERROR:Ljava/lang/Integer;

    .line 8
    .line 9
    sget-object v3, Lcom/meishu/sdk/meishu_ad/v;->C:Landroid/os/Handler;

    .line 10
    .line 11
    const-string v3, "\u89c6\u9891\u8d44\u6e90\u9519\u8bef"

    .line 12
    .line 13
    invoke-virtual {v1, v0, v3, v2}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/m0;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public success()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g$a;->a:Lcom/meishu/sdk/meishu_ad/v$g;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$g;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    iput-wide v1, v0, Lcom/meishu/sdk/meishu_ad/v;->p:J

    .line 10
    .line 11
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g$a;->a:Lcom/meishu/sdk/meishu_ad/v$g;

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/meishu/sdk/meishu_ad/v$g;->c:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/meishu/sdk/meishu_ad/v$g$a;->a:Lcom/meishu/sdk/meishu_ad/v$g;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/meishu/sdk/meishu_ad/v$g;->j:Lcom/meishu/sdk/meishu_ad/v;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/meishu/sdk/meishu_ad/v;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g$a;->a:Lcom/meishu/sdk/meishu_ad/v$g;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    iput v1, v0, Lcom/meishu/sdk/core/ad/BaseAdSlot;->adPatternType:I

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getImageUrls()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/meishu/sdk/meishu_ad/v$g$a;->a:Lcom/meishu/sdk/meishu_ad/v$g;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getVideo_cover()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x0

    .line 58
    aput-object v1, v0, v2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g$a;->a:Lcom/meishu/sdk/meishu_ad/v$g;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/v$g$a;->a:Lcom/meishu/sdk/meishu_ad/v$g;

    .line 72
    .line 73
    iget-object v1, v0, Lcom/meishu/sdk/meishu_ad/v$g;->d:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/meishu/sdk/meishu_ad/v$g;->b:Lcom/meishu/sdk/meishu_ad/nativ/a;

    .line 76
    .line 77
    iget-boolean v3, v0, Lcom/meishu/sdk/meishu_ad/v$g;->h:Z

    .line 78
    .line 79
    iget-object v4, v0, Lcom/meishu/sdk/meishu_ad/v$g;->a:Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/v$g;->i:Ljava/util/List;

    .line 82
    .line 83
    invoke-static {v1, v2, v3, v4, v0}, Lcom/meishu/sdk/meishu_ad/v;->a(Lcom/meishu/sdk/meishu_ad/nativ/f;Lcom/meishu/sdk/meishu_ad/nativ/a;ZLcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
