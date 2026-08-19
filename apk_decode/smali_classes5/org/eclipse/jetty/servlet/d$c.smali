.class public Lorg/eclipse/jetty/servlet/d$c;
.super Lorg/eclipse/jetty/servlet/Holder$c;
.source "SourceFile"

# interfaces
.implements Ljavax/servlet/ServletRegistration$Dynamic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public b:Ljavax/servlet/MultipartConfigElement;

.field public final synthetic c:Lorg/eclipse/jetty/servlet/d;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/d$c;->c:Lorg/eclipse/jetty/servlet/d;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$c;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Ljavax/servlet/MultipartConfigElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/d$c;->b:Ljavax/servlet/MultipartConfigElement;

    .line 2
    .line 3
    return-object v0
.end method
