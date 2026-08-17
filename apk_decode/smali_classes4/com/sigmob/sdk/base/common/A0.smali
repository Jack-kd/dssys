.class public final synthetic Lcom/sigmob/sdk/base/common/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/A0;->a:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/A0;->a:Ljava/lang/Exception;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/o$3;->g(Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
