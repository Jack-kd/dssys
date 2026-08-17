.class public final synthetic Lcom/sigmob/sdk/base/common/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/j$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/common/AdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/common/AdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/B;->a:Lcom/sigmob/sdk/base/common/AdActivity;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/B;->a:Lcom/sigmob/sdk/base/common/AdActivity;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/AdActivity;->f(Lcom/sigmob/sdk/base/common/AdActivity;)V

    return-void
.end method
