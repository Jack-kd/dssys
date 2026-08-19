.class public final synthetic Lcom/sigmob/sdk/mraid/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/mraid/s;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/mraid/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/mraid/I;->a:Lcom/sigmob/sdk/mraid/s;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/mraid/I;->a:Lcom/sigmob/sdk/mraid/s;

    invoke-static {v0, p1, p2}, Lcom/sigmob/sdk/mraid/s;->s(Lcom/sigmob/sdk/mraid/s;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
