.class public final synthetic Lcom/sigmob/sdk/nativead/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/nativead/ab;

.field public final synthetic c:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/ab;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/C;->b:Lcom/sigmob/sdk/nativead/ab;

    iput-object p2, p0, Lcom/sigmob/sdk/nativead/C;->c:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/C;->b:Lcom/sigmob/sdk/nativead/ab;

    iget-object v1, p0, Lcom/sigmob/sdk/nativead/C;->c:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/sigmob/sdk/nativead/ab;->j(Lcom/sigmob/sdk/nativead/ab;Landroid/view/ViewGroup;)V

    return-void
.end method
