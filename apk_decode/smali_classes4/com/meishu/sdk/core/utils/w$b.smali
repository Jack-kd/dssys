.class public Lcom/meishu/sdk/core/utils/w$b;
.super Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meishu/sdk/core/utils/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/meishu/sdk/core/utils/w;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/utils/w;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/SafeBroadcastReceiver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/meishu/sdk/core/utils/w$b;->a:Lcom/meishu/sdk/core/utils/w;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/meishu/sdk/core/utils/w;Lcom/meishu/sdk/core/utils/w$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/meishu/sdk/core/utils/w$b;-><init>(Lcom/meishu/sdk/core/utils/w;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "reason"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v0, "reason:"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "HW"

    .line 25
    .line 26
    invoke-static {v0, p2}, Lcom/meishu/sdk/core/utils/LogUtil;->dev(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string p2, "homekey"

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/4 v0, 0x1

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/w$b;->a:Lcom/meishu/sdk/core/utils/w;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/w;->a(Lcom/meishu/sdk/core/utils/w;Z)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const-string p2, "recentapps"

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object p1, p0, Lcom/meishu/sdk/core/utils/w$b;->a:Lcom/meishu/sdk/core/utils/w;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/w;->b(Lcom/meishu/sdk/core/utils/w;Z)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
