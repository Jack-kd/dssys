.class Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$4;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->startVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$4;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/meishu/sdk/core/safe/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public safeRun()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$4;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd$4;->this$0:Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;->access$000(Lcom/meishu/sdk/platform/bd/recycler/BDRecyclerAd;)Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
