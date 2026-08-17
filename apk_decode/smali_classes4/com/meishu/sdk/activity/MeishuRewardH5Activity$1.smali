.class Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;
.super Lcom/meishu/sdk/core/safe/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->initClickEvent(Lcom/meishu/sdk/core/bquery/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/o;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeOnClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$000(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 10
    .line 11
    const-string v0, "broadcast_onclosed"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$100(Lcom/meishu/sdk/activity/MeishuRewardH5Activity;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity;->access$200()Lcom/meishu/sdk/meishu_ad/nativ/f;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/16 v0, 0x12

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/meishu/sdk/core/utils/b1;->a(Lcom/meishu/sdk/core/ad/BaseAdSlot;I)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lcom/meishu/sdk/core/view/MSDialog$Builder;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;->this$0:Lcom/meishu/sdk/activity/MeishuRewardH5Activity;

    .line 36
    .line 37
    invoke-direct {p1, v0}, Lcom/meishu/sdk/core/view/MSDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    const-string v0, "\u5b8c\u6574\u89c2\u770b\u5373\u53ef\u83b7\u5f97\u5956\u52b1\n\u786e\u8ba4\u8981\u79bb\u5f00\u5417\uff1f"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/view/MSDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/meishu/sdk/core/view/MSDialog$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/view/MSDialog$Builder;->setShowCloseBtn(Z)Lcom/meishu/sdk/core/view/MSDialog$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Lcom/meishu/sdk/core/view/MSDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/meishu/sdk/core/view/MSDialog$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "\u653e\u5f03\u9886\u53d6"

    .line 57
    .line 58
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1$2;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1$2;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/core/view/MSDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/meishu/sdk/core/view/MSDialog$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "\u7ee7\u7eed\u6d4f\u89c8"

    .line 68
    .line 69
    new-instance v1, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1$1;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1$1;-><init>(Lcom/meishu/sdk/activity/MeishuRewardH5Activity$1;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Lcom/meishu/sdk/core/view/MSDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/meishu/sdk/core/view/MSDialog$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/meishu/sdk/core/view/MSDialog$Builder;->build()Lcom/meishu/sdk/core/view/MSDialog;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    return-void
.end method
