.class public Lcom/meishu/sdk/core/ad/paster/a$a;
.super Lcom/meishu/sdk/core/safe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meishu/sdk/core/ad/paster/a;->replay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/meishu/sdk/core/ad/paster/a;


# direct methods
.method public constructor <init>(Lcom/meishu/sdk/core/ad/paster/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/meishu/sdk/core/ad/paster/a$a;->a:Lcom/meishu/sdk/core/ad/paster/a;

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
    iget-object v0, p0, Lcom/meishu/sdk/core/ad/paster/a$a;->a:Lcom/meishu/sdk/core/ad/paster/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/meishu/sdk/core/ad/a;->getAdView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/meishu/sdk/meishu_ad/nativ/NormalMediaView;->replay()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
