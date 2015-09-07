package edu.kit.aifb.cumulus.test.framework.runners;

/**
 * CumulusRDF test facility for running Cassandra 2.
 * 
 * @author Andrea Gazzarini
 * @since 1.1.0
 */
public class Cassandra2xRunner extends CassandraRunner {

	@Override
	protected String getCassandraVersion() {
		return "2.0.3";
	}
}