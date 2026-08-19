.class public Lorg/eclipse/jetty/servlet/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/Servlet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/util/Stack;

.field public final synthetic b:Lorg/eclipse/jetty/servlet/d;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/d$d;->b:Lorg/eclipse/jetty/servlet/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jetty/servlet/d$d;->a:Ljava/util/Stack;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/eclipse/jetty/servlet/d;Lorg/eclipse/jetty/servlet/d$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/d$d;-><init>(Lorg/eclipse/jetty/servlet/d;)V

    return-void
.end method
