.class public final synthetic Lcom/anythink/core/common/m/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/anythink/core/common/m/b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/anythink/core/common/m/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/common/m/z;->b:Lcom/anythink/core/common/m/b;

    iput p2, p0, Lcom/anythink/core/common/m/z;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/anythink/core/common/m/z;->b:Lcom/anythink/core/common/m/b;

    iget v1, p0, Lcom/anythink/core/common/m/z;->c:I

    invoke-static {v0, v1}, Lcom/anythink/core/common/m/b;->a(Lcom/anythink/core/common/m/b;I)V

    return-void
.end method
