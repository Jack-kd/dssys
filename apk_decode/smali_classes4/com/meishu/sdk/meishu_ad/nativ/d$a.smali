.class public Lcom/meishu/sdk/meishu_ad/nativ/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meishu/sdk/core/bquery/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/meishu_ad/nativ/d;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;Lcom/meishu/sdk/meishu_ad/nativ/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meishu/sdk/core/bquery/j<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/meishu_ad/n0;

.field public final synthetic b:Lcom/meishu/sdk/meishu_ad/nativ/d;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/meishu_ad/nativ/d;Lcom/meishu/sdk/meishu_ad/n0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/d$a;->b:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/meishu/sdk/meishu_ad/nativ/d$a;->a:Lcom/meishu/sdk/meishu_ad/n0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    .line 1
    const-string p1, "."

    .line 2
    .line 3
    check-cast p2, Ljava/io/File;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {}, Lcom/meishu/sdk/core/utils/j0;->a()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    int-to-long v2, v2

    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d$a;->b:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iput-wide v1, v0, Lcom/meishu/sdk/meishu_ad/nativ/f;->D:J

    .line 28
    .line 29
    iget-object v0, p0, Lcom/meishu/sdk/meishu_ad/nativ/d$a;->b:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->getMonitorUrl()[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/nativ/d$a;->b:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 45
    .line 46
    iget-wide v3, v3, Lcom/meishu/sdk/meishu_ad/nativ/f;->C:J

    .line 47
    .line 48
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/meishu/sdk/meishu_ad/nativ/d$a;->b:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    const-wide/16 v3, 0x0

    .line 62
    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/d$a;->b:Lcom/meishu/sdk/meishu_ad/nativ/d;

    .line 70
    .line 71
    iget-object p1, p1, Lcom/meishu/sdk/meishu_ad/nativ/d;->i:Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 72
    .line 73
    iget-wide v3, p1, Lcom/meishu/sdk/meishu_ad/nativ/f;->D:J

    .line 74
    .line 75
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v1, p1}, Lcom/meishu/sdk/core/utils/i0;->b([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1}, Lcom/meishu/sdk/core/ad/BaseAdSlot;->setMonitorUrl([Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/meishu/sdk/meishu_ad/nativ/d$a;->a:Lcom/meishu/sdk/meishu_ad/n0;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-interface {p1, p2}, Lcom/meishu/sdk/meishu_ad/n0;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    return-void
.end method
