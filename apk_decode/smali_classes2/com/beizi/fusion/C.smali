.class public final synthetic Lcom/beizi/fusion/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/beizi/fusion/eo;


# direct methods
.method public synthetic constructor <init>(Lcom/beizi/fusion/eo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/C;->b:Lcom/beizi/fusion/eo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/C;->b:Lcom/beizi/fusion/eo;

    invoke-static {v0, p1}, Lcom/beizi/fusion/eo;->f(Lcom/beizi/fusion/eo;Landroid/view/View;)V

    return-void
.end method
