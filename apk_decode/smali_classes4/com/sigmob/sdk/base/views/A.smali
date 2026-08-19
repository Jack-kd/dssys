.class public final synthetic Lcom/sigmob/sdk/base/views/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/base/views/a;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/base/views/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/views/A;->b:Lcom/sigmob/sdk/base/views/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/views/A;->b:Lcom/sigmob/sdk/base/views/a;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/views/a;->a(Lcom/sigmob/sdk/base/views/a;Landroid/view/View;)V

    return-void
.end method
