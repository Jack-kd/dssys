.class public final synthetic Lcom/beizi/fusion/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/dd;


# instance fields
.field public final synthetic a:Lcom/beizi/fusion/eo;


# direct methods
.method public synthetic constructor <init>(Lcom/beizi/fusion/eo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/beizi/fusion/D;->a:Lcom/beizi/fusion/eo;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/D;->a:Lcom/beizi/fusion/eo;

    invoke-static {v0, p1}, Lcom/beizi/fusion/eo;->c(Lcom/beizi/fusion/eo;Landroid/view/View;)V

    return-void
.end method
