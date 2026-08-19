.class public final synthetic Lcom/sigmob/sdk/nativead/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/nativead/w;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/T;->b:Lcom/sigmob/sdk/nativead/w;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/T;->b:Lcom/sigmob/sdk/nativead/w;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/nativead/w;->p(Lcom/sigmob/sdk/nativead/w;Landroid/view/View;)V

    return-void
.end method
