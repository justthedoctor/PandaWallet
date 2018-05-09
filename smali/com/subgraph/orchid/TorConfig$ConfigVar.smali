.class public interface abstract annotation Lcom/subgraph/orchid/TorConfig$ConfigVar;
.super Ljava/lang/Object;
.source "TorConfig.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/subgraph/orchid/TorConfig$ConfigVar;
        defaultValue = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/TorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ConfigVar"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract defaultValue()Ljava/lang/String;
.end method

.method public abstract type()Lcom/subgraph/orchid/TorConfig$ConfigVarType;
.end method
