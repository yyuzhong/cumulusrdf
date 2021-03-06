#!/bin/bash

SAVEDIR=$PWD
WORKDIR=$( cd $(dirname $0) ; pwd -P)
cd $WORKDIR

java -Dlog.dir=/home/yzyan/rdf/cumulus/cumulusrdf/logs -cp ../cumulusrdf-standalone/target/cumulusrdf-standalone-1.1.0-SNAPSHOT.jar:../cumulusrdf-core/target/cumulusrdf-core-1.1.0-SNAPSHOT.jar:../cumulusrdf-framework/target/cumulusrdf-framework-1.1.0-SNAPSHOT.jar:../cumulusrdf-web-module/target/cumulusrdf-web-module-1.1.0-SNAPSHOT/WEB-INF/lib/* edu.kit.aifb.cumulus.cli.Cirrus query -q 'PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
PREFIX ub: <http://swat.cse.lehigh.edu/onto/univ-bench.owl#>
select distinct *
where
{
{ ?x a ub:AssociateProfessor . ?x ub:memberOf <http://www.Department0.University0.edu> } union
{ ?x a ub:FullProfessor . ?x ub:memberOf <http://www.Department0.University0.edu> } union
{ ?x a ub:AssistantProfessor . ?x ub:memberOf <http://www.Department0.University0.edu> } union
{ ?x a ub:Lecturer . ?x ub:memberOf <http://www.Department0.University0.edu> } union
{ ?x a ub:UndergraduateStudent . ?x ub:memberOf <http://www.Department0.University0.edu> } union
{ ?x a ub:GraduateStudent . ?x ub:memberOf <http://www.Department0.University0.edu> } union
{ ?x a ub:TeachingAssistant . ?x ub:memberOf <http://www.Department0.University0.edu> } union
{ ?x a ub:ResearchAssistant . ?x ub:memberOf <http://www.Department0.University0.edu> } union
{ ?x a ub:AssociateProfessor . ?x ub:worksFor <http://www.Department0.University0.edu> } union
{ ?x a ub:FullProfessor . ?x ub:worksFor <http://www.Department0.University0.edu> } union
{ ?x a ub:AssistantProfessor . ?x ub:worksFor <http://www.Department0.University0.edu> } union
{ ?x a ub:Lecturer . ?x ub:worksFor <http://www.Department0.University0.edu> } union
{ ?x a ub:UndergraduateStudent . ?x ub:worksFor <http://www.Department0.University0.edu> } union
{ ?x a ub:GraduateStudent . ?x ub:worksFor <http://www.Department0.University0.edu> } union
{ ?x a ub:TeachingAssistant . ?x ub:worksFor <http://www.Department0.University0.edu> } union
{ ?x a ub:ResearchAssistant . ?x ub:worksFor <http://www.Department0.University0.edu> } union
{ ?x a ub:AssociateProfessor . ?x ub:headOf <http://www.Department0.University0.edu> } union
{ ?x a ub:FullProfessor . ?x ub:headOf <http://www.Department0.University0.edu> } union
{ ?x a ub:AssistantProfessor . ?x ub:headOf <http://www.Department0.University0.edu> } union
{ ?x a ub:Lecturer . ?x ub:headOf <http://www.Department0.University0.edu> } union
{ ?x a ub:UndergraduateStudent . ?x ub:headOf <http://www.Department0.University0.edu> } union
{ ?x a ub:GraduateStudent . ?x ub:headOf <http://www.Department0.University0.edu> } union
{ ?x a ub:TeachingAssistant . ?x ub:headOf <http://www.Department0.University0.edu> } union
{ ?x a ub:ResearchAssistant . ?x ub:headOf <http://www.Department0.University0.edu> }
}
'
cd $SAVEDIR
