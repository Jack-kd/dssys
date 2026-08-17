.class Lcom/anythink/network/beizi/BzATFeedAd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/network/beizi/BzATFeedAd;->prepare(Landroid/view/View;Lcom/anythink/nativead/api/ATNativePrepareInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/network/beizi/BzATFeedAd;


# direct methods
.method public constructor <init>(Lcom/anythink/network/beizi/BzATFeedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/anythink/network/beizi/BzATFeedAd$b;->a:Lcom/anythink/network/beizi/BzATFeedAd;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/anythink/network/beizi/BzATFeedAd$b;->a:Lcom/anythink/network/beizi/BzATFeedAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/anythink/network/beizi/BzATFeedAd;->a(Lcom/anythink/network/beizi/BzATFeedAd;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/anythink/network/beizi/BzATFeedAd$b;->a:Lcom/anythink/network/beizi/BzATFeedAd;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/anythink/nativead/unitgroup/a;->notifyAdDislikeClick()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
