.class public final synthetic Lcom/sigmob/sdk/nativead/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/nativead/b;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/G;->b:Lcom/sigmob/sdk/nativead/b;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/G;->b:Lcom/sigmob/sdk/nativead/b;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/nativead/b;->d(Lcom/sigmob/sdk/nativead/b;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
