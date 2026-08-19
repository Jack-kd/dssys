.class public final synthetic Lcom/sigmob/sdk/base/common/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/utils/o$a;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/base/common/AdActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/common/AdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/C;->a:Lcom/sigmob/sdk/base/common/AdActivity;

    return-void
.end method


# virtual methods
.method public final onTimerFinished()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/C;->a:Lcom/sigmob/sdk/base/common/AdActivity;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/AdActivity;->c(Lcom/sigmob/sdk/base/common/AdActivity;)V

    return-void
.end method
