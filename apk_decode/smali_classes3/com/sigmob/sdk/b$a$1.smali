.class Lcom/sigmob/sdk/b$a$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/sdk/b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/b$a;


# direct methods
.method public constructor <init>(Lcom/sigmob/sdk/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sigmob/sdk/b$a$1;->a:Lcom/sigmob/sdk/b$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sigmob/sdk/base/utils/s;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move p2, v3

    goto :goto_1

    :sswitch_0
    const-string v0, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlNDUkVFTl9PTg=="

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :sswitch_1
    const-string p2, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlNDUkVFTl9PRkY="

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    goto :goto_1

    :sswitch_2
    const-string p2, "YW5kcm9pZC5pbnRlbnQuYWN0aW9uLlVTRVJfUFJFU0VOVA=="

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move p2, v2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_2
    return-void

    :pswitch_0
    const-string p2, "screen on"

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    const-string p2, "screen_on"

    :goto_3
    invoke-static {p2, p1, p1, p1}, Lcom/sigmob/sdk/base/common/ad;->a(Ljava/lang/String;Ljava/lang/String;Lcom/sigmob/sdk/base/models/BaseAdUnit;Lcom/sigmob/sdk/base/common/ad$a;)V

    return-void

    :pswitch_1
    const-string p2, "screen off"

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/manager/d;->a()Lcom/sigmob/sdk/manager/d;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/sigmob/sdk/manager/d;->a(Z)V

    const-string p2, "locked"

    goto :goto_3

    :pswitch_2
    const-string p2, "screen user present"

    invoke-static {p2}, Lcom/czhj/sdk/logger/SigmobLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/sigmob/sdk/manager/d;->a()Lcom/sigmob/sdk/manager/d;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sigmob/sdk/manager/d;->a(Z)V

    const-string p2, "unlock"

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0xf0a9a95 -> :sswitch_2
        0x50733c09 -> :sswitch_1
        0x5074125f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
